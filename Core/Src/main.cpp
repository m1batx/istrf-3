/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <string.h>
#include "model_data.h"
#include <math.h>

#include "tensorflow/lite/micro/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tensorflow/lite/schema/schema_generated.h"

#define INPUT_BUFFER_SIZE 100
#define TFLITE_SCHEMA_VERSION 3
#define TENSOR_ARENA_SIZE (60 * 1024) // can be more adjucted
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
// Add near the top of main.cpp or in a separate file
      // For strlen

// TFLM error reporter requires this function.
// It prints the string passed to it.
extern "C" void DebugLog(const char* s) {
#ifdef DEBUG // Optional: only log in debug builds
    // --- Choose ONE of the methods below ---

    // Method 1: Use printf (requires syscalls.c _write implementation)
    printf("%s", s);

    // Ensure a newline is often helpful for readability
    // printf("\n");
    // HAL_UART_Transmit(&huart4, (uint8_t*)"\n", 1, 100);
#else
    (void)s; // Prevent unused variable warning in release builds
#endif
}
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

COM_InitTypeDef BspCOMInit;
__IO uint32_t BspButtonState = BUTTON_RELEASED;

TIM_HandleTypeDef htim2;

UART_HandleTypeDef huart4;

/* USER CODE BEGIN PV */
uint8_t rx_buffer[INPUT_BUFFER_SIZE];
uint8_t rx_index = 0;
uint8_t rx_char;
float test_data[8] = {2003.0f, 854.0f, 1710.0f, 2.0f, 1.0f, 3.0f, 8.0f, 2008.0f};
//float prediction_result; // Variable to store the prediction

namespace { // Use an anonymous namespace for TFLM globals
  tflite::MicroErrorReporter micro_error_reporter;
  tflite::ErrorReporter* error_reporter = nullptr;
  const tflite::Model* model = nullptr;
  tflite::MicroInterpreter* interpreter = nullptr;
  TfLiteTensor* input_tensor = nullptr;
  TfLiteTensor* output_tensor = nullptr;

  // Arena for TFLM memory usage. Size MUST be determined experimentally for your model.
  alignas(16) uint8_t tensor_arena[TENSOR_ARENA_SIZE]; // Added alignas(16) for potential performance benefits/requirements
}
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MPU_Config(void);
static void MX_GPIO_Init(void);
static void MX_UART4_Init(void);
static void MX_TIM2_Init(void);
/* USER CODE BEGIN PFP */
void UART_ProcessInput(void);
void TFLM_Init(void); // Function to initialize TFLM
void TFLM_RunInference(const float* input_data, float* output_data); // function to run interface
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
// ReLU activation function
float relu(float x) {
  return (x > 0) ? x : 0;
}

// Neural network prediction function
// --- TFLM Initialization Function ---
void TFLM_Init() {
  error_reporter = &micro_error_reporter;
  error_reporter->Report("TFLM Init Started");

  // 1. Load the model
  // Use the variable name from your model_data.h file
  model = tflite::GetModel(housing_model_tflite); // <--- ADJUSTED HERE
  if (!model) { // Add a check in case GetModel returns nullptr
       error_reporter->Report("Failed to get model from housing_model_tflite data!");
       Error_Handler();
       return;
  }
  if (model->version() != TFLITE_SCHEMA_VERSION) {
    error_reporter->Report("Model schema version %d != TFLite schema version %d",
                         model->version(), TFLITE_SCHEMA_VERSION);
    Error_Handler();
    return;
  }
  error_reporter->Report("Model Loaded");

  // 2. Define the Op Resolver - (Keep as before, matching your model's ops)
  static tflite::MicroMutableOpResolver<2> micro_op_resolver;
  TfLiteStatus add_status;
  add_status = micro_op_resolver.AddFullyConnected();
  if (add_status != kTfLiteOk) {
      error_reporter->Report("Failed to add FullyConnected op");
      Error_Handler(); return;
  }
   add_status = micro_op_resolver.AddRelu();
   if (add_status != kTfLiteOk) {
      error_reporter->Report("Failed to add Relu op");
      Error_Handler(); return;
  }
  error_reporter->Report("Op Resolver Created (FullyConnected, Relu)");


  // 3. Instantiate the Interpreter (Keep as before)
  static tflite::MicroInterpreter static_interpreter(
      model, micro_op_resolver, tensor_arena, TENSOR_ARENA_SIZE, error_reporter);
  interpreter = &static_interpreter;
  error_reporter->Report("Interpreter Created");

  // 4. Allocate memory for tensors (Keep as before)
  TfLiteStatus allocate_status = interpreter->AllocateTensors();
  if (allocate_status != kTfLiteOk) {
    error_reporter->Report("AllocateTensors() failed. Arena size (%d bytes) might be too small.", TENSOR_ARENA_SIZE);
    Error_Handler();
    return;
  }
  error_reporter->Report("Tensors Allocated. Arena used: %d bytes (approx)", interpreter->arena_used_bytes());

  // 5. Get pointers to input and output tensors & VERIFY (Keep as before)
  input_tensor = interpreter->input(0);
  output_tensor = interpreter->output(0);

  // --- Verification --- (Keep as before)
  if (input_tensor->dims->size != 2 || input_tensor->dims->data[0] != 1 || input_tensor->dims->data[1] != 8) {
      error_reporter->Report("FAIL: Input tensor shape mismatch! Expected [1, 8], got [%d, %d]", input_tensor->dims->data[0], input_tensor->dims->data[1]);
      Error_Handler(); return;
  }
   if (input_tensor->type != kTfLiteFloat32) {
       error_reporter->Report("FAIL: Input tensor type mismatch! Expected Float32, got %d", input_tensor->type);
       Error_Handler(); return;
   }
   error_reporter->Report("Input tensor OK: Shape [1, 8], Type Float32");


  if (output_tensor->dims->size != 2 || output_tensor->dims->data[0] != 1 || output_tensor->dims->data[1] != 1) {
      error_reporter->Report("FAIL: Output tensor shape mismatch! Expected [1, 1], got [%d, %d]", output_tensor->dims->data[0], output_tensor->dims->data[1]);
       Error_Handler(); return;
   }
    if (output_tensor->type != kTfLiteFloat32) {
       error_reporter->Report("FAIL: Output tensor type mismatch! Expected Float32, got %d", output_tensor->type);
       Error_Handler(); return;
   }
   error_reporter->Report("Output tensor OK: Shape [1, 1], Type Float32");
   // --- End Verification ---

   error_reporter->Report("TFLM Init Complete");
}

void TFLM_RunInference(const float* input_data, float* output_data) {
    if (!interpreter || !input_tensor || !output_tensor) {
        error_reporter->Report("Error: TFLM not initialized properly!");
        *output_data = NAN; // Indicate error
        return;
    }

    // 1. Copy input data to the input tensor
    // Input shape is [1, 8], type float32.
    // input_data should be a pointer to 8 floats.
    if (input_tensor->bytes != 8 * sizeof(float)) {
         error_reporter->Report("Error: Input tensor size mismatch during inference!");
         *output_data = NAN; return;
    }
    memcpy(input_tensor->data.f, input_data, input_tensor->bytes);

    // 2. Run inference
    // Optional: Time the inference
    // uint32_t start_invoke = HAL_GetTick();
    TfLiteStatus invoke_status = interpreter->Invoke();
    // uint32_t end_invoke = HAL_GetTick();

    if (invoke_status != kTfLiteOk) {
        error_reporter->Report("Error: Invoke() failed with status %d", invoke_status);
        *output_data = NAN;
        return;
    }
    // error_reporter->Report("Inference took %lu ms", end_invoke - start_invoke);


    // 3. Copy output data from the output tensor
    // Output shape is [1, 1], type float32.
    if (output_tensor->bytes != 1 * sizeof(float)) {
         error_reporter->Report("Error: Output tensor size mismatch during inference!");
         *output_data = NAN; return;
    }

    *output_data = output_tensor->data.f[0]; // Copy the single output value
}
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MPU Configuration--------------------------------------------------------*/
  MPU_Config();

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_UART4_Init();
  MX_TIM2_Init();
  /* USER CODE BEGIN 2 */

  /* USER CODE END 2 */

  /* Initialize leds */
  BSP_LED_Init(LED_GREEN);
  BSP_LED_Init(LED_BLUE);
  BSP_LED_Init(LED_RED);

  /* Initialize USER push-button, will be used to trigger an interrupt each time it's pressed.*/
  BSP_PB_Init(BUTTON_USER, BUTTON_MODE_EXTI);

  /* Initialize COM1 port (115200, 8 bits (7-bit data + 1 stop bit), no parity */
  BspCOMInit.BaudRate   = 115200;
  BspCOMInit.WordLength = COM_WORDLENGTH_8B;
  BspCOMInit.StopBits   = COM_STOPBITS_1;
  BspCOMInit.Parity     = COM_PARITY_NONE;
  BspCOMInit.HwFlowCtl  = COM_HWCONTROL_NONE;
  if (BSP_COM_Init(COM1, &BspCOMInit) != BSP_ERROR_NONE)
  {
    Error_Handler();
  }

  /* USER CODE BEGIN BSP */
  HAL_TIM_Base_Start(&htim2);
  /* -- Sample board code to send message over COM1 port ---- */

//  uint32_t start_time = __HAL_TIM_GET_COUNTER(&htim2);
//  printf("Welcome to STM32 world !\r\n");
//  uint32_t end_time = __HAL_TIM_GET_COUNTER(&htim2);
//
//  uint32_t execution_time = end_time - start_time;
//  printf("printf execution time: %lu microseconds\r\n", execution_time);
//
//  HAL_TIM_Base_Stop(&htim2);


  //model usage
  float prediction_result = 0.0f;

  uint32_t start_time = __HAL_TIM_GET_COUNTER(&htim2);

  TFLM_Init();
  TFLM_RunInference(test_data, &prediction_result);

  uint32_t end_time = __HAL_TIM_GET_COUNTER(&htim2);
  char buffer[50];

  snprintf(buffer, sizeof(buffer), "Initial Prediction: %.2f\r\n", prediction_result);
  printf(buffer);
  uint32_t execution_time = end_time - start_time;
  printf("printf execution time: %lu microseconds\r\n", execution_time);
  HAL_TIM_Base_Stop(&htim2);
   // Example: Send the prediction via UART

   //printf(buffer, "Prediction: %f\r\n", prediction_result);
   //HAL_UART_Transmit(&huart4, (uint8_t*)buffer, strlen(buffer), HAL_MAX_DELAY);
  /* -- Sample board code to switch on leds ---- */
  BSP_LED_On(LED_GREEN);
  BSP_LED_On(LED_BLUE);
  BSP_LED_On(LED_RED);

  /* USER CODE END BSP */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {

    /* -- Sample board code for User push-button in interrupt mode ---- */
    if (BspButtonState == BUTTON_PRESSED)
    {
      /* Update button state */
      BspButtonState = BUTTON_RELEASED;
      /* -- Sample board code to toggle leds ---- */
      BSP_LED_Toggle(LED_GREEN);
      BSP_LED_Toggle(LED_BLUE);
      BSP_LED_Toggle(LED_RED);

      /* ..... Perform your action ..... */
    }
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Supply configuration update enable
  */
  HAL_PWREx_ConfigSupply(PWR_LDO_SUPPLY);

  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_DIV1;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 10;
  RCC_OscInitStruct.PLL.PLLP = 2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_3;
  RCC_OscInitStruct.PLL.PLLVCOSEL = RCC_PLL1VCOMEDIUM;
  RCC_OscInitStruct.PLL.PLLFRACN = 0;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2
                              |RCC_CLOCKTYPE_D3PCLK1|RCC_CLOCKTYPE_D1PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.SYSCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_APB3_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_APB1_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_APB2_DIV1;
  RCC_ClkInitStruct.APB4CLKDivider = RCC_APB4_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 80 - 1 ;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 4294967295;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */

}

/**
  * @brief UART4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_UART4_Init(void)
{

  /* USER CODE BEGIN UART4_Init 0 */

  /* USER CODE END UART4_Init 0 */

  /* USER CODE BEGIN UART4_Init 1 */

  /* USER CODE END UART4_Init 1 */
  huart4.Instance = UART4;
  huart4.Init.BaudRate = 115200;
  huart4.Init.WordLength = UART_WORDLENGTH_8B;
  huart4.Init.StopBits = UART_STOPBITS_1;
  huart4.Init.Parity = UART_PARITY_NONE;
  huart4.Init.Mode = UART_MODE_TX_RX;
  huart4.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart4.Init.OverSampling = UART_OVERSAMPLING_16;
  huart4.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart4.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart4.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart4) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart4, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart4, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&huart4) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN UART4_Init 2 */
    // Enable UART4 interrupts
    HAL_NVIC_SetPriority(UART4_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(UART4_IRQn);
  /* USER CODE END UART4_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  /* USER CODE BEGIN MX_GPIO_Init_1 */

  /* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /* USER CODE BEGIN MX_GPIO_Init_2 */

  /* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */
/**
 * @brief UART Rx Complete Callback
 * @param huart UART handle
 * @retval None
 */
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
    if (huart->Instance == UART4)
    {
        // Echo the received character
        HAL_UART_Transmit(huart, &rx_char, 1, HAL_MAX_DELAY);

        if (rx_char == '\r' || rx_char == '\n')
        {
            if (rx_index > 0)
            {
                rx_buffer[rx_index] = '\0'; // Null-terminate the string
                printf("\r\nHello %s\r\n", rx_buffer);
                printf("Enter another name: \r\n");
                rx_index = 0;
            }
        }
        else
        {
            if (rx_index < INPUT_BUFFER_SIZE - 1)
            {
                rx_buffer[rx_index++] = rx_char;
            }
            else
            {
                printf("\r\nInput too long. Resetting buffer.\r\n");
                rx_index = 0;
            }
        }

        // Restart UART reception
        HAL_UART_Receive_IT(huart, &rx_char, 1);
    }
}
/* USER CODE END 4 */

 /* MPU Configuration */

void MPU_Config(void)
{
  MPU_Region_InitTypeDef MPU_InitStruct = {0};

  /* Disables the MPU */
  HAL_MPU_Disable();

  /** Initializes and configures the Region and the memory to be protected
  */
  MPU_InitStruct.Enable = MPU_REGION_ENABLE;
  MPU_InitStruct.Number = MPU_REGION_NUMBER0;
  MPU_InitStruct.BaseAddress = 0x0;
  MPU_InitStruct.Size = MPU_REGION_SIZE_4GB;
  MPU_InitStruct.SubRegionDisable = 0x87;
  MPU_InitStruct.TypeExtField = MPU_TEX_LEVEL0;
  MPU_InitStruct.AccessPermission = MPU_REGION_NO_ACCESS;
  MPU_InitStruct.DisableExec = MPU_INSTRUCTION_ACCESS_DISABLE;
  MPU_InitStruct.IsShareable = MPU_ACCESS_SHAREABLE;
  MPU_InitStruct.IsCacheable = MPU_ACCESS_NOT_CACHEABLE;
  MPU_InitStruct.IsBufferable = MPU_ACCESS_NOT_BUFFERABLE;

  HAL_MPU_ConfigRegion(&MPU_InitStruct);
  /* Enables the MPU */
  HAL_MPU_Enable(MPU_PRIVILEGED_DEFAULT);

}

/**
  * @brief BSP Push Button callback
  * @param Button Specifies the pressed button
  * @retval None
  */
void BSP_PB_Callback(Button_TypeDef Button)
{
  if (Button == BUTTON_USER)
  {
    BspButtonState = BUTTON_PRESSED;
  }
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

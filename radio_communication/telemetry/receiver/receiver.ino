#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

RF24 radio(7, 8); // CE, CSN

const byte address[6] = "13121";
float Array[3];

void setup() {
  Serial.begin(9600);
  radio.begin();
  radio.openReadingPipe(0, address);
  radio.setPALevel(RF24_PA_MIN);
  radio.startListening();
}

void loop() {
  if (radio.available()) {
    radio.read(&Array, sizeof(Array));
    Serial.print(Array[0]);
    Serial.print(",");
    Serial.print(Array[1]);
    Serial.print(",");
    Serial.println(Array[2]);
  }
  delay(1000);
}

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_BMP280.h>
#include <Adafruit_Sensor.h>
#include <nRF24L01.h>
#include <RF24.h>

RF24 radio(7, 8);

const byte address[6] = "13121";

#define BMP280_ADDRESS 0x76

Adafruit_BMP280 bmp; // I2C
float initialAltitude;
char userInput;
int sensorValue;
float RateRoll, RatePitch, RateYaw;
float altitude, temperature, pressure;
float Array[3];

void gyro_signals(void) {
  Wire.beginTransmission(0x68);
  Wire.write(0x1A);
  Wire.write(0x05);
  Wire.endTransmission(); 
  Wire.beginTransmission(0x68);
  Wire.write(0x1B); 
  Wire.write(0x8); 
  Wire.endTransmission(); 
  Wire.beginTransmission(0x68);
  Wire.write(0x43);
  Wire.endTransmission();
  Wire.requestFrom(0x68,6);
  int16_t GyroX=Wire.read()<<8 | Wire.read();
  int16_t GyroY=Wire.read()<<8 | Wire.read();
  int16_t GyroZ=Wire.read()<<8 | Wire.read();
  RateRoll=(float)GyroX/65.5;
  RatePitch=(float)GyroY/65.5;
  RateYaw=(float)GyroZ/65.5;
}

void setup() {
  while ( !Serial ) delay(100);   // wait for native usb

  // Barometer
  unsigned status;
  status = bmp.begin(BMP280_ADDRESS);
  bmp.setSampling(Adafruit_BMP280::MODE_NORMAL,
                  Adafruit_BMP280::SAMPLING_X2,
                  Adafruit_BMP280::SAMPLING_X16,
                  Adafruit_BMP280::FILTER_X16,
                  Adafruit_BMP280::STANDBY_MS_500);
  
  initialAltitude = bmp.readAltitude(1013.25);
  // Orientation sensor
  // Wire.setClock(400000);
  // Wire.begin();
  // delay(250);
  // Wire.beginTransmission(0x68); 
  // Wire.write(0x6B);
  // Wire.write(0x00);
  // Wire.endTransmission();

  radio.begin();
  radio.openWritingPipe(address);
  radio.setPALevel(RF24_PA_MIN);
  radio.stopListening();
}

void loop(){
  altitude = bmp.readAltitude(1013.25) - initialAltitude;
  temperature = bmp.readTemperature();
  pressure = bmp.readPressure() / 1000.0f;
  Array[0] = altitude;
  Array[1] = temperature;
  Array[2] = pressure;
  radio.write(&Array, 3 * sizeof(float));
}
#include <Wire.h>
#include <SPI.h>
#include <Adafruit_BMP280.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BNO055.h>
#include <utility/imumaths.h>

#define BMP280_ADDRESS 0x76

Adafruit_BNO055 IMU = Adafruit_BNO055();


Adafruit_BMP280 bmp; // I2C
float initialAltitude;
char userInput;
int sensorValue;

void setup() {
  Serial.begin(9600);
  while ( !Serial ) delay(100);   // wait for native usb
  unsigned status;
  status = bmp.begin(BMP280_ADDRESS);
  if (!status) {
    Serial.println(F("Could not find a valid BMP280 sensor, check wiring or "
                      "try a different address!"));
    Serial.print("SensorID was: 0x"); Serial.println(bmp.sensorID(),16);
    Serial.print("        ID of 0xFF probably means a bad address, a BMP 180 or BMP 085\n");
    Serial.print("   ID of 0x56-0x58 represents a BMP 280,\n");
    Serial.print("        ID of 0x60 represents a BME 280.\n");
    Serial.print("        ID of 0x61 represents a BME 680.\n");
    while (1) delay(10);
  }
  /* Default settings from datasheet. */
  bmp.setSampling(Adafruit_BMP280::MODE_NORMAL,     /* Operating Mode. */
                  Adafruit_BMP280::SAMPLING_X2,     /* Temp. oversampling */
                  Adafruit_BMP280::SAMPLING_X16,    /* Pressure oversampling */
                  Adafruit_BMP280::FILTER_X16,      /* Filtering. */
                  Adafruit_BMP280::STANDBY_MS_500); /* Standby time. */
  
  initialAltitude = bmp.readAltitude(1013.25);
  IMU.begin();
  IMU.setExtCrystalUse(true);
}

void loop(){

  if(Serial.available()> 0){ 
    userInput = Serial.read(); // read user input
    if(userInput == 'g'){ // if we get expected value 
      Serial.print(bmp.readAltitude(1013.25) - initialAltitude);
      Serial.print(",");
      Serial.print(bmp.readTemperature());
      // Serial.print(IMU.getTemp());
      Serial.print(",");
      Serial.print(bmp.readPressure() / 1000.0f);
      Serial.print(",");
      sensorValue = analogRead(A0);
      Serial.print(sensorValue * (5.0f / 1023.0f) * (5.255319149f));
      Serial.print(",");
      imu::Vector<3> acc = IMU.getVector(Adafruit_BNO055::VECTOR_ACCELEROMETER);
      imu::Vector<3> gyro = IMU.getVector(Adafruit_BNO055::VECTOR_GYROSCOPE);
      imu::Vector<3> mag = IMU.getVector(Adafruit_BNO055::VECTOR_MAGNETOMETER);

      Serial.print(acc.x());
      Serial.print(",");
      Serial.print(acc.y());
      Serial.print(",");
      Serial.println(acc.z());
    } // if user input 'g' 
  } // Serial.available
} // Void Loop
#include <SPI.h>
#include <Wire.h>
#include <nRF24L01.h>
#include <RF24.h>

RF24 radio(7, 8);

const byte address[6] = "13121";
bool connection_working = false;
bool data_reception = false;
bool data_transmission = false;
const char test_text[] = "test";
float RawRateR, RawRateP, RawRateY;
float CalibratedRateR, CalibratedRateP, CalibratedRateY;
int CalibrationIterator;

void test_connection(){
  if (radio.available()){
    connection_working = true;
  }
}

void test_reception_connection(){
  radio.openReadingPipe(1, address);
  radio.startListening();
  
  char text[32] = "";
  radio.read(&text, sizeof(text));
  if (text == test_text){
    data_reception = true;
  }
}

void test_transmission_connection(){
  radio.stopListening();
  radio.openWritingPipe(address);
  data_transmission = radio.write(&test_text, sizeof(test_text));
}

void fail_check(variable){
  if (variable == false){
    Serial.println("Test failed");
  }
  while (variable == false){
    // Infinite loop
  }
}

void raw_gyro_values(){
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
  RawRateR=(float)GyroX/65.5;
  RawRateP=(float)GyroY/65.5;
  RawRateY=(float)GyroZ/65.5;
}

void calibrate_gyro(){

  for (CalibrationIterator=0; CalibrationIterator<2000; CalibrationIterator++){
    raw_gyro_values();
    CalibratedRateR += RawRateR;
    CalibratedRateP += RawRateP;
    CalibratedRateY += RawRateY;
    delay(1);
  }

  CalibratedRateR/=2000;
  CalibratedRateP/=2000;
  CalibratedRateY/=2000;
}

void setup() {
  Serial.begin(57600);
  Serial.println("Booting VisionHawk flight controller...")
  delay(1000);
  Serial.println("\nTest 1: Transceiver communication")
  radio.begin();
  radio.setChannel(115);
  radio.setPALevel(RF24_PA_MAX);
  radio.setDataRate(RF24_250KBPS);

  // Testing transceiver connection
  test_connection();
  int counter1 = 0;
  while (connection_working == false && counter1 <= 5){
    Serial.println("Retrying transceiver connection ... (");
    Serial.print(counter1);
    Serial.println(")");
    counter1 += 1;
    delay(1000);
  }

  fail_check(connection_working);
  Serial.println("Transceiver connection successful!");

  // Testing data reception
  test_reception_connection();
  int counter2 = 0;
  while (data_reception == false && counter2 <= 5){
    Serial.println("Retrying data reception...(");
    Serial.print(counter2);
    Serial.println(")");
    counter2 += 1;
    delay(1000);
  }

  fail_check(data_reception);
  Serial.println("Data reception successful!");

  // Testing data transmission
  test_transmission_connection();
  int counter3 = 0;
  while (data_transmission == false && counter3 <= 5){
    Serial.println("Retrying data transmission...(");
    Serial.print(counter3);
    Serial.println(")");
    counter3 += 1;
    delay(1000);
  }
  Serial.println("Data transmission successful!");

  Serial.println("\nTest 2: Gyroscope calibration");
  Wire.setClock(400000);
  Wire.begin();
  delay(250);
  Wire.beginTransmission(0x68); 
  Wire.write(0x6B);
  Wire.write(0x00);
  Wire.endTransmission();
  
  calibrate_gyro();
  Serial.println("Calibration values computed!")
  Serial.println("\nTest 3: Barometer readings");
}

void loop() {
  // put your main code here, to run repeatedly:

}

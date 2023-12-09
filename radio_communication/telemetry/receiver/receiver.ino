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
  delay(100);
}

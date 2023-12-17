#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>

const byte address[6] = "13121";
RF24 radio(9, 10);

struct Data_to_be_sent {
  byte ch1;
  byte ch2;
  byte ch3;
  byte ch4;
}

Data_to_be_sent sent_data;

void setup() {
  // put your setup code here, to run once:
  radio.begin();
  radio.openWritingPipe(address);
  radio.setPALevel(RF24_PA_MIN);

  sent_data.ch1 = 127;
  sent_data.ch2 = 127;
  sent_data.ch3 = 127;
  sent_data.ch4 = 127;

  radio.stopListening();
}

void loop() {
  // put your main code here, to run repeatedly:
  sent_data.ch1 = map(analogRead(A0), 0, 1024, 0, 255);
  sent_data.ch2 = map(analogRead(A1), 0, 1024, 0, 255);
  sent_data.ch3 = map(analogRead(A2), 0, 1024, 0, 255);
  sent_data.ch4 = map(analogRead(A3), 0, 1024, 0, 255);

  radio.write(&sent_data, sizeof(Data_to_be_sent));
}

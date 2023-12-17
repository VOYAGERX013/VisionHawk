#include <SPI.h>
#include <nRF24L01.h>
#include <RF24.h>
#include <Servo.h>

const byte address[6] = "13121";
RF24 radio(9, 10);

struct Received_data {
  byte ch1;
  byte ch2;
  byte ch3;
  byte ch4;
}

Received_data received_data;

Servo channel_1;
Servo channel_2;
Servo channel_3;
Servo channel_4;

int ch1_val = 0;
int ch2_val = 0;
int ch3_val = 0;
int ch4_val = 0;

void reset_data(){
  received_data.ch1 = 0;
  received_data.ch2 = 127;
  received_data.ch3 = 127;
  received_data.ch4 = 127;
}

void setup() {
  // put your setup code here, to run once:
  channel_1.attach(2);
  channel_2.attach(3);
  channel_3.attach(4);
  channel_4.attach(5);

  reset_data();

  radio.begin();
  radio.openReadingPipe(0, address);
  radio.setPALevel(RF24_PA_MIN);
  radio.startListening();
}

unsigned long lastRecvTime = 0;

void receive_the_data(){
  while (radio.available()){
    radio.read(&received_data, sizeof(Receieved_data));
    lastRecvTime = millis();
  }
}

void loop() {
  // put your main code here, to run repeatedly:
  receive_the_data();
  unsigned long now = millis();
  if (now - lastRecvTime > 1000){
    reset_data();
  }

  ch1_val = map(received_data.ch1, 0, 255, 1000, 2000); // Throttle
  ch2_val = map(received_data.ch2, 0, 255, 1000, 2000); // Yaw
  ch3_val = map(received_data.ch3, 0, 255, 1000, 2000); // Pitch
  ch4_val = map(received_data.ch4, 0, 255, 1000, 2000); // Roll
}

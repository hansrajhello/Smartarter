#define clockPin 4
#define dataPin 3
#define digitOne 6
#define digitTwo 7
#define digitThree 8
#define digitFour 5
#define onLed 12
#define offLed 13
#define otherLed A0

#define onRelay 11
#define offRelay 9
#define buzzer 10


#define slideSwitch A1
#define pot A7
#define pushButton 2
#define monitorPin A2

const byte digit_pattern[16] =
{
  B00111111,  // 0
  B00000110,  // 1
  B01011011,  // 2
  B01001111,  // 3
  B01100110,  // 4
  B01101101,  // 5
  B01111101,  // 6
  B00000111,  // 7
  B01111111,  // 8
  B01101111,  // 9
  B01110111,  // A
  B01111100,  // b
  B00111001,  // C
  B01011110,  // d
  B01111001,  // E
  B01110001   // F
};     


void setup() {
  Serial.begin(9600);
  
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);
  pinMode(digitOne, OUTPUT);
  pinMode(digitTwo, OUTPUT);
  pinMode(digitThree, OUTPUT);
  pinMode(onLed, OUTPUT);
  pinMode(offLed, OUTPUT);
  pinMode(otherLed, OUTPUT);
  
  pinMode(slideSwitch, INPUT);
  pinMode(pot, INPUT);
  pinMode(monitorPin, INPUT);
  pinMode(pushButton, INPUT_PULLUP);
  
  byte outputBits = B01111111;
  deActivate();
  shiftOut(dataPin, clockPin, MSBFIRST, ~outputBits);  // shiftOut takes the byte, performs SIPO on the shift register
  digitalWrite(digitThree, HIGH);
}

void loop() {
  Serial.println("Blinking ON LED");
  digitalWrite(onLed, HIGH);
  delay(1000);
  digitalWrite(onLed, LOW);
  delay(100);
  Serial.println("Blinking OFF LED");
  digitalWrite(offLed, HIGH);
  delay(1000);
  digitalWrite(offLed, LOW);
  delay(100);
  Serial.println("Blinking YELLOW LED");
  digitalWrite(otherLed, HIGH);
  delay(1000);
  digitalWrite(otherLed, LOW);
  delay(100);
  Serial.println("ON RELAY");
  digitalWrite(onRelay, HIGH);
  delay(1000);
  digitalWrite(onRelay, LOW);
  delay(100);
  Serial.println("OFF RELAY");
  digitalWrite(offRelay, HIGH);
  delay(1000);
  digitalWrite(offRelay, LOW);
  delay(100);
  Serial.println("BUZZER");
  digitalWrite(buzzer, HIGH);
  delay(1000);
  digitalWrite(buzzer, LOW);
  delay(100);
}

void deActivate(){
  digitalWrite(digitOne, LOW);
  digitalWrite(digitTwo, LOW);
  digitalWrite(digitThree, LOW);
}

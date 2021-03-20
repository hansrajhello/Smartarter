#include<EEPROM.h>

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
#define offRelay A3
#define buzzer 10


#define slideSwitch A1
#define pot A7
#define pushButton 2
#define monitorPin A2

// initializing variables to avoid garbage
int on_minutes=EEPROM.read(0), on_hours=EEPROM.read(1), off_minutes=EEPROM.read(2), off_hours=EEPROM.read(3), sensorValue=0, sensorEnable=EEPROM.read(4), sensorThreshold=EEPROM.read(6), safety_delay=EEPROM.read(7);
int var_index=0, pot_before=0, update_allowed=0;

const byte digit_pattern[44] =
{
  // Bin digits
	B11111100, B01100000, B11011010, B11110010,   // 0123
	B01100110, B10110110, B10111110, B11100000,   // 4567
	B11111110, B11110110, B11101110, B00111110,   // 89AB
	B00011010, B01111010, B10011110, B10001110,   // CDEF
	B10111110, B01101110, B01100000, B01110000,   // GHIJ
	B01101110, B00011100, B11101100, B11101100,   // KLMN
	B11111100, B11001110, B11100110, B11101110,   // OPQR
	B10110110, B11100000, B01111100, B01111100,   // STUV
	B01111110, B01101110, B01001110, B11011010,   // WXYZ
	
	B00000000, B10000000, B01000000, B00100000,   // SPACE, single segments
	B00010000, B00001000, B00000100, B00000010
};     


void setup() {
  Serial.begin(9600);
  
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);
  pinMode(digitOne, OUTPUT);
  pinMode(digitTwo, OUTPUT);
  pinMode(digitThree, OUTPUT);
  pinMode(digitFour, OUTPUT);
  pinMode(onLed, OUTPUT);
  pinMode(offLed, OUTPUT);
  pinMode(otherLed, OUTPUT);
  pinMode(onRelay, OUTPUT);
  pinMode(offRelay, OUTPUT);
  pinMode(buzzer, OUTPUT);
  
  pinMode(slideSwitch, INPUT);
  pinMode(pot, INPUT);
  pinMode(monitorPin, INPUT);
  pinMode(pushButton, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(pushButton), buttonPushed, RISING);
  
  
  digitalWrite(onRelay, LOW);
  digitalWrite(offRelay, LOW);
  digitalWrite(buzzer, LOW);

  for(int i=0; i<60; i++){
  	showChar('H', 1, false);
    delay(5);
    showChar('E', 2, false);
    delay(5);
    showChar('L', 3, false);
    delay(5);
    showChar('O', 4, false);
    delay(5);
  }
  safety_delay=EEPROM.read(7);
  off_minutes=safety_delay;
  digitalWrite(otherLed, HIGH);
  while(off_minutes>=0)
  {
    if(digitalRead(slideSwitch))
      break;    
    for(int i=0; i<60; i++)
    {
      if(digitalRead(slideSwitch))
        break;    
      var_index=3;
      for(int i=0; i<44; i++)
      {
        flashDisplay(true);      
      } 
    }
    off_minutes--;
  }
  digitalWrite(otherLed, LOW);

}

void loop() {
  if(digitalRead(slideSwitch)){
    pot_before=analogRead(pot);
    on_minutes=EEPROM.read(0);
    on_hours=EEPROM.read(1);
    off_minutes=EEPROM.read(2);
    off_hours=EEPROM.read(3);
    sensorEnable=EEPROM.read(4);
    sensorThreshold=EEPROM.read(6);
    var_index=0;
    takeReadings();
  }
  if(!digitalRead(slideSwitch)){
    letsGo();
  }
}
void buttonPushed(){
  var_index=(++var_index)%8;
  pot_before=analogRead(pot);
  update_allowed=0;
}
void takeReadings(){
  while(digitalRead(slideSwitch)){
    for(int i=0; i<35; i++){
      flashDisplay(true);
      updateVariables();
    }
    for(int i=0; i<35; i++){
      flashDisplay(false);
      updateVariables();
    }
  }
}
void updateVariables(){
  
  int value=analogRead(pot);
  if(abs(value-pot_before)>20)
    update_allowed=1;
  if(update_allowed==1){
    if(var_index==0){
      on_minutes=map(value, 0, 1023, 0, 59);
      EEPROM.write(0, on_minutes);
    }
    if(var_index==1){
      on_hours=map(value, 0, 1023, 0, 48);
      EEPROM.write(1, on_hours);
    }
    if(var_index==2){
      off_minutes=map(value, 0, 1023, 0, 59);
      EEPROM.write(2, off_minutes);
  	}
    if(var_index==3){
      off_hours=map(value, 0, 1023, 0, 48);
      EEPROM.write(3, off_hours);
    }
    if(var_index==4){
      sensorEnable= value<512?0:1;
      EEPROM.write(4, sensorEnable);
    }
    if(var_index==6){
      sensorThreshold=value;
      EEPROM.write(6, sensorThreshold);
    }
    if(var_index==7){
      safety_delay=map(value, 0, 1023, 0, 30);
      EEPROM.write(7, safety_delay);
    }
  }
}
void flashDisplay(bool state){
  if(state==true){
    if(var_index==0 || var_index==1){
      digitalWrite(onLed, HIGH);
      
      int onesM=on_minutes%10;
      int tensM=on_minutes/10;
      int onesH=on_hours%10;
      int tensH=on_hours/10;
      showDigit(tensH, 1, false);
      delay(5);
      showDigit(onesH, 2, true);
      delay(5);
      showDigit(tensM, 3, false);
      delay(5);
      showDigit(onesM, 4, false);
      delay(5);
    }
    if(var_index==2 || var_index==3){
	  digitalWrite(onLed, LOW);
      digitalWrite(offLed, HIGH);

      int onesM=off_minutes%10;
      int tensM=off_minutes/10;
      int onesH=off_hours%10;
      int tensH=off_hours/10;
      showDigit(tensH, 1, false);
      delay(5);
      showDigit(onesH, 2, true);
      delay(5);
      showDigit(tensM, 3, false);
      delay(5);
      showDigit(onesM, 4, false);
      delay(5);
    }
    if(var_index==4){
      digitalWrite(offLed, LOW);
      
      showChar('S', 1, false);
      delay(5);
      showChar('E', 2, true);
      delay(5);
      showChar('O', 3, false);
      delay(5);
      if(sensorEnable)
        showChar('N', 4, false);
      if(!sensorEnable)
        showChar('F', 4, false);
      delay(5);
    }
    if(var_index==6){
      int d4=sensorThreshold%10;
      int d3=(sensorThreshold%100)/10;
      int d2=(sensorThreshold%1000)/100;
      int d1=sensorThreshold/1000;
      digitalWrite(otherLed, HIGH);

	  showDigit(d1, 1, false);
      delay(5);
      showDigit(d2, 2, false);
      delay(5);
      showDigit(d3, 3, false);
      delay(5);
      showDigit(d4, 4, true);
      delay(5);
    }
    
    if(var_index==7){
      int onesM=safety_delay%10;
      int tensM=safety_delay/10;
      deActivate();
	  showDigit(tensM, 2, false);
      delay(5);
      showDigit(onesM, 3, false);
      delay(5);
    }
  }
  if(state==false){
    digitalWrite(onLed, LOW);
    digitalWrite(offLed, LOW);
    digitalWrite(otherLed, LOW);
      
    if(var_index==0){
      int onesH=on_hours%10;
      int tensH=on_hours/10;
      showDigit(tensH, 1, false);
      delay(5);
      showDigit(onesH, 2, true);
      delay(5);
      deActivate();
      delay(10);
    }
    if(var_index==1){
      int onesM=on_minutes%10;
      int tensM=(on_minutes-onesM)/10;
      
      deActivate();
      delay(10);
      showDigit(tensM, 3, false);
      delay(5);
      showDigit(onesM, 4, false);
      delay(5);
    }
    if(var_index==2){
      
      int onesH=off_hours%10;
      int tensH=off_hours/10;
      showDigit(tensH, 1, false);
      delay(5);
      showDigit(onesH, 2, true);
      delay(5);
      deActivate();
      delay(10);
    }
    if(var_index==3){
      int onesM=off_minutes%10;
      int tensM=off_minutes/10;
      deActivate();
      delay(10);
	  showDigit(tensM, 3, false);
      delay(5);
      showDigit(onesM, 4, false);
      delay(5);
    }
    if(var_index==4){
	  digitalWrite(onLed, LOW);
      digitalWrite(offLed, LOW);
      digitalWrite(otherLed, LOW);
      
      showChar('S', 1, false);
      delay(5);
      showChar('E', 2, true);
      delay(15);
    }
    if(var_index==6){
      digitalWrite(otherLed, LOW);
      deActivate();
      delay(20);
  	}
    if(var_index==7){
      deActivate();
      delay(10);
    }
  }
  if(var_index==5){
    sensorValue=analogRead(monitorPin);  
    int d4=sensorValue%10;
    int d3=(sensorValue%100)/10;
    int d2=(sensorValue%1000)/100;
    int d1=sensorValue/1000;

    for(int k=0;k<15;k++){
      digitalWrite(otherLed, HIGH);
	  	showDigit(d1, 1, false);
      delay(5);
      showDigit(d2, 2, false);
      delay(5);
      showDigit(d3, 3, false);
      delay(5);
      showDigit(d4, 4, false);
      delay(5);
    }
  }
}
//show a value on a given Digit
void showDigit(int value, int index, bool includeDP){
  byte outputBits = digit_pattern[value]; // fetch the corresponding byte for a integer 
  if(includeDP == true)
    outputBits = outputBits | B00000001; // perform a bitwise OR to include decimal point
  deActivate();
  shiftOut(dataPin, clockPin, LSBFIRST, ~outputBits);  // shiftOut takes the byte, performs SIPO on the shift register
  activateDigit(index);
}
void showChar(char character, int index, bool includeDP){
  byte outputBits = 0;
    if(character >= '0' && character <= '9')
		outputBits = digit_pattern[character - '0'];
	else if (character >= 'A' && character <= 'Z')
		outputBits = digit_pattern[character - 'A' + 10];
	else if (character == ' ')
		outputBits = digit_pattern[36];
  if(includeDP == true)
    outputBits = outputBits | B00000001; // perform a bitwise OR to include decimal point
  deActivate();
  shiftOut(dataPin, clockPin, LSBFIRST, ~outputBits);  // shiftOut takes the byte, performs SIPO on the shift register
  activateDigit(index);
}
void activateDigit(int index){
  if(index==1){
    digitalWrite(digitOne, HIGH);
    digitalWrite(digitTwo, LOW);
    digitalWrite(digitThree, LOW);
    digitalWrite(digitFour, LOW);
}
  else if(index==2){
    digitalWrite(digitOne, LOW);
    digitalWrite(digitTwo, HIGH);
    digitalWrite(digitThree, LOW);
    digitalWrite(digitFour, LOW);
}
  else if(index==3){
    digitalWrite(digitOne, LOW);
    digitalWrite(digitTwo, LOW);
    digitalWrite(digitThree, HIGH);
    digitalWrite(digitFour, LOW);
}
  else if(index==4){
    digitalWrite(digitOne, LOW);
    digitalWrite(digitTwo, LOW);
    digitalWrite(digitThree, LOW);
    digitalWrite(digitFour, HIGH);
}
}
void deActivate(){
  digitalWrite(digitOne, LOW);
  digitalWrite(digitTwo, LOW);
  digitalWrite(digitThree, LOW);
  digitalWrite(digitFour, LOW);
}

void letsGo()
{
  Serial.print("switching ON in 5 ");
  delay(1000);
  Serial.print("4 ");
  delay(1000);
  Serial.print("3 ");
  delay(1000);
  Serial.print("2 ");
  delay(1000);
  Serial.println("1 ");
  delay(1000);
  Serial.println("############# GO #############");

  on_minutes=EEPROM.read(0);
  on_hours=EEPROM.read(1);
  sensorEnable=EEPROM.read(4);
  sensorThreshold=EEPROM.read(6);
  PUMP_ON();
 
  while(on_hours>=0)
  {
    if(digitalRead(slideSwitch))
      break;    
    while(on_minutes>=0)
    {
      if(digitalRead(slideSwitch))
        break;    
      for(int i=0; i<60; i++)
      {
        if(digitalRead(slideSwitch))
          break;    
		    if(sensorEnable && analogRead(monitorPin)<sensorThreshold){
          PUMP_OFF();
          delay(500);
          BUZZ();
        }
        var_index=0;
        for(int i=0; i<43; i++)
          flashDisplay(true);      
      }
      on_minutes--;
    }
    on_hours--;
    on_minutes=59;
  }
  PUMP_OFF();
  off_minutes=EEPROM.read(2);
  off_hours=EEPROM.read(3);
  
  while(off_hours>=0)
  {
    if(digitalRead(slideSwitch))
          break;    
    while(off_minutes>=0)
    {
      if(digitalRead(slideSwitch))
          break;    
      for(int i=0; i<60; i++)
      {
        if(digitalRead(slideSwitch))
          break;    
		var_index=2;
        for(int i=0; i<44; i++)
        {
          flashDisplay(true);      
        } 
      }
      off_minutes--;
    }
    off_hours--;
    off_minutes=59;
  }
}

void PUMP_ON(){
  Serial.println("PUMP_ON();");
  digitalWrite(onRelay, HIGH);
  delay(300);
  digitalWrite(onRelay, LOW);
  digitalWrite(offLed, LOW);
  digitalWrite(onLed, HIGH);  
}
void PUMP_OFF(){
  Serial.println("PUMP_OFF();");
  digitalWrite(offRelay, HIGH);
  delay(300);
  digitalWrite(offRelay, LOW);
  digitalWrite(offLed, HIGH);  
  digitalWrite(onLed, LOW);
}
void BUZZ(){
  Serial.println("BUZZ();");
  delay(1000);
  digitalWrite(onLed, LOW);
  digitalWrite(offLed, HIGH);
  for(;;){
    digitalWrite(buzzer, HIGH);
    digitalWrite(otherLed, LOW);
    delay(200);
    digitalWrite(otherLed, HIGH);
    digitalWrite(buzzer, LOW);
    for(int i=0; i<30; i++){
      showChar('H', 1, false);
      delay(5);
      showChar('E', 2, false);
      delay(5);
      showChar('L', 3, false);
      delay(5);
      showChar('P', 4, false);
      delay(5);
    }
    if(digitalRead(slideSwitch))
       break;
  }
}

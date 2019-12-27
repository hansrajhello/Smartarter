#define clockPin 4
#define latchPin 6
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

// initializing variables to avoid garbage
int on_minutes=15, on_hours=1, off_minutes=45, off_hours=2;
int var_index=0, pot_before=0, update_allowed=0;

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
  pinMode(latchPin, OUTPUT);
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
  attachInterrupt(digitalPinToInterrupt(pushButton), buttonPushed, RISING);
  
  
  deActivate();

  digitalWrite(onRelay, LOW);
  digitalWrite(offRelay, LOW);
  digitalWrite(buzzer, LOW);
}

void loop() {
//  if(digitalRead(slideSwitch)){
    pot_before=analogRead(pot);
    takeReadings();
//  }
//  if(!digitalRead(slideSwitch)){
//    kamPeLagBsdK();
//  }
}
void buttonPushed(){
  var_index=(++var_index)%4;
  pot_before=analogRead(pot);
  update_allowed=0;
}
void takeReadings(){
  while(!digitalRead(slideSwitch)){
    for(int i=0; i<35; i++){
      flashDisplay(true);
      updateVariables();
      Serial.print(var_index); Serial.print(":: "); Serial.print(on_minutes); Serial.print(" "); Serial.print(on_hours); Serial.print(" "); Serial.print(off_minutes); Serial.print(" "); Serial.println(off_hours);
    }
    for(int i=0; i<35; i++){
      flashDisplay(false);
      updateVariables();
      Serial.print(var_index); Serial.print(":: "); Serial.print(on_minutes); Serial.print(" "); Serial.print(on_hours); Serial.print(" "); Serial.print(off_minutes); Serial.print(" "); Serial.println(off_hours);
    }
  }
}
void updateVariables(){
  
  int value=analogRead(pot);
  if(abs(value-pot_before)>20)
    update_allowed=1;
  if(update_allowed==1){
    if(var_index==0)
      on_minutes=map(value, 0, 1023, 0, 59);
    if(var_index==1)
      on_hours=map(value, 0, 1023, 0, 9);
    if(var_index==2)
      off_minutes=map(value, 0, 1023, 0, 59);
    if(var_index==3)
      off_hours=map(value, 0, 1023, 0, 9);
  }
}
void flashDisplay(bool state){
  if(state==true){
    if(var_index==0 || var_index==1){
      digitalWrite(onLed, HIGH);
      digitalWrite(offLed, LOW);
      
      int onesM=on_minutes%10;
      int tensM=(on_minutes-onesM)/10;
      int onesH=on_hours;
      showDigit(onesH, 1, true);
      delay(5);
      showDigit(tensM, 2, false);
      delay(5);
      showDigit(onesM, 3, false);
      delay(5);
    }
    if(var_index==2 || var_index==3){
	  digitalWrite(onLed, LOW);
      digitalWrite(offLed, HIGH);
      
      int onesM=off_minutes%10;
      int tensM=(off_minutes-onesM)/10;
      int onesH=off_hours;
      showDigit(onesH, 1, true);
      delay(5);
      showDigit(tensM, 2, false);
      delay(5);
      showDigit(onesM, 3, false);
      delay(5);
    }
  }
  if(state==false){
    digitalWrite(onLed, LOW);
    digitalWrite(offLed, LOW);
      
    if(var_index==0){
      int onesH=on_hours;
      showDigit(onesH, 1, true);
      delay(5);
      deActivate();
      delay(10);
    }
    if(var_index==1){
      int onesM=on_minutes%10;
      int tensM=(on_minutes-onesM)/10;
      
      deActivate();
      delay(5);
      showDigit(tensM, 2, false);
      delay(5);
      showDigit(onesM, 3, false);
      delay(5);
    }
    if(var_index==2){
      
      int onesH=off_hours;
      showDigit(onesH, 1, true);
      delay(5);
      deActivate();
      delay(10);
    }
    if(var_index==3){
      int currentMinutes=off_minutes;
      int onesM=currentMinutes%10;
      int tensM=(currentMinutes-onesM)/10;
      deActivate();
      delay(5);
	  showDigit(tensM, 2, false);
      delay(5);
      showDigit(onesM, 3, false);
      delay(5);
    }
  }
}
//show a value on a given Digit
void showDigit(int value, int index, bool includeDP){
  byte outputBits = digit_pattern[value]; // fetch the corresponding byte for a integer 
  if(includeDP == true)
    outputBits = outputBits | B10000000; // perform a bitwise OR to include decimal point
  deActivate();
  digitalWrite(latchPin, LOW);
  shiftOut(dataPin, clockPin, MSBFIRST, ~outputBits);  // shiftOut takes the byte, performs SIPO on the shift register
  digitalWrite(latchPin, HIGH);
  activateDigit(index);
}
void activateDigit(int index){
  if(index==1){
    digitalWrite(digitOne, HIGH);
    digitalWrite(digitTwo, LOW);
    digitalWrite(digitThree, LOW);
  }
  else if(index==2){
    digitalWrite(digitOne, LOW);
    digitalWrite(digitTwo, HIGH);
    digitalWrite(digitThree, LOW);
  }
  else if(index==3){
    digitalWrite(digitOne, LOW);
    digitalWrite(digitTwo, LOW);
    digitalWrite(digitThree, HIGH);
  }
  else{
    ;
  }
}
void deActivate(){
  digitalWrite(digitOne, LOW);
  digitalWrite(digitTwo, LOW);
  digitalWrite(digitThree, LOW);
}

void kamPeLagBsdK(){
    int offReading=analogRead(monitorPin);
    Serial.print("switching ON in 10 ");
    delay(1000);
    Serial.print("9 ");
    delay(1000);
    Serial.print("8 ");
    delay(1000);
    Serial.print("6 ");
    delay(1000);
    Serial.print("5 ");
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

    PUMP_ON();
    int onDelay=on_hours*60+on_minutes;
    while(onDelay>0){
        int j=analogRead(monitorPin)+20;
        if(j>=offReading){
            BUZZ();
        }
      Serial.print("onDelay = ");
      Serial.println(onDelay);
      
        onDelay--;
        delay(1000);
      if(digitalRead(slideSwitch))
        break;
    }
    PUMP_OFF();
    // int offDelay=off_hours*3600+off_minutes*60;
    int offDelay=off_hours*60+off_minutes;
    while(offDelay>0){
      Serial.print("offDelay = ");
      Serial.println(offDelay);
      
        offDelay--;
        delay(1000);
      if(digitalRead(slideSwitch))
        break;
    }
}

void PUMP_ON(){
  Serial.println("PUMP_ON();");
  delay(1000);
  digitalWrite(onRelay, HIGH);
  delay(1000);
  digitalWrite(onRelay, LOW);
  digitalWrite(offLed, LOW);
  digitalWrite(onLed, HIGH);  
}
void PUMP_OFF(){
  Serial.println("PUMP_OFF();");
  delay(1000);
  digitalWrite(offRelay, HIGH);
  delay(1000);
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
    delay(100);
  }
}

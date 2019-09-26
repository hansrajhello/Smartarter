int onRelay = 3;
int offRelay = 2;
int buzzer = 4;
int onLed = 10;
int offLed = 11;
int buzzerLed = 12;
int monitorPin = A5;
int onPot = A0;
int offPot = A1;

void PUMP_ON(){
  
  digitalWrite(onRelay, HIGH);
  delay(300);
  digitalWrite(onRelay, LOW);
  digitalWrite(offLed, LOW);
  digitalWrite(onLed, HIGH);  
}
void PUMP_OFF(){
  digitalWrite(offRelay, HIGH);
  delay(300);
  digitalWrite(offRelay, LOW);
  digitalWrite(offLed, HIGH);  
  digitalWrite(onLed, LOW);
}
void BUZZ(){
  digitalWrite(onLed, LOW);
  digitalWrite(offLed, HIGH);
  for(;;){
    digitalWrite(buzzer, HIGH);
    digitalWrite(buzzerLed, LOW);
    delay(200);
    digitalWrite(buzzerLed, HIGH);
    digitalWrite(buzzer, LOW);
    delay(100);
  }
}

void setup() {
  pinMode(onRelay, OUTPUT);
  pinMode(offRelay, OUTPUT);
  pinMode(buzzer, OUTPUT);
  pinMode(onLed, OUTPUT);
  pinMode(offLed, OUTPUT);
  pinMode(buzzerLed, OUTPUT);

  pinMode(monitorPin, INPUT);
  pinMode(onPot, INPUT);
  pinMode(offPot, INPUT);

  
  
  digitalWrite(onRelay, LOW);
  digitalWrite(offRelay, LOW);
  digitalWrite(buzzer, LOW);
  digitalWrite(onLed, LOW);
  digitalWrite(offLed, HIGH);
  digitalWrite(buzzerLed, HIGH);
  delay(300000);//safetyy delay
}
void loop() {

  int offReading=analogRead(monitorPin);
   PUMP_ON();
  delay(1000);
  float i=0;
  
    int onDelay=1200;
    if(i>onDelay){
      break;  
    }
    int j=analogRead(monitorPin);
    k=j+20;

    if(k>=offReading){
      BUZZ();
    }
    
    i++;
    delay(1000);
  
  PUMP_OFF();
  i=0;
  
    offDelay=3600;
    if(i>offDelay){
      break;  
    }
    i++;
    delay(1000);
  }
    


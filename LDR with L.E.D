int lightPin = A0;
int lightVal;
int dv = 250;
int blue = 8;
int white = 9;

void setup() {
  // put your setup code here, to run once:
pinMode(lightPin, INPUT);
pinMode(blue, OUTPUT);
pinMode(white, OUTPUT);
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
lightVal = analogRead(lightPin);
Serial.println(lightVal);
delay(dv);

if(lightVal <= 499 && lightVal >= 0)
{
  digitalWrite(blue, HIGH);
  digitalWrite(white, LOW);
}

if(lightVal >= 500 && lightVal <= 1023)
{
  digitalWrite(blue, LOW);
  digitalWrite(white, HIGH);
}



}

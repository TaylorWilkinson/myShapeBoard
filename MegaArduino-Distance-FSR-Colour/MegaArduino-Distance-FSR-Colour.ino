//colour 1
const int color1S0 = 20;
const int color1S1 = 22;
const int color1S2 = 24;
const int color1S3 = 26;
const int color1out = 28;
const int color1in = 37; //"in" pins control the color sensors, turning them on/off with code

//colour2
const int color2S0 = 32;
const int color2S1 = 34;
const int color2S2 = 36;
const int color2S3 = 38;
const int color2out = 40;
const int color2in = 39;

//colour3
const int color3S0 = 44;
const int color3S1 = 46;
const int color3S2 = 48;
const int color3S3 = 50;
const int color3out = 52;
const int color3in = 41;


//colour4
const int color4S0 = 53;
const int color4S1 = 51;
const int color4S2 = 49;
const int color4S3 = 47;
const int color4out = 45;
const int color4in = 43;

// Variables
int red = 0;
int green = 0;
int blue = 0;

//Force ints
int fsrPin1 = 1;
int fsrPin2 = 2;
int fsrPin3 = 3;
int fsrPin4 = 4;
int fsrReading1;
int fsrReading2;
int fsrReading3;
int fsrReading4;

//Distance Pin
const int distancePin = 30;

void setup() {
  Serial.begin(9600);

  //color sensor one
  pinMode(color1S0, OUTPUT);
  pinMode(color1S1, OUTPUT);
  pinMode(color1S2, OUTPUT);
  pinMode(color1S3, OUTPUT);
  pinMode(color1out, INPUT);

  digitalWrite(color1S0, HIGH);
  digitalWrite(color1S1, HIGH);
  digitalWrite(color1S2, HIGH);
  digitalWrite(color1S3, HIGH);
  digitalWrite(color1in, LOW);

  //color sensor two
  pinMode(color2S0, OUTPUT);
  pinMode(color2S1, OUTPUT);
  pinMode(color2S2, OUTPUT);
  pinMode(color2S3, OUTPUT);
  pinMode(color2out, INPUT);

  digitalWrite(color2S0, HIGH);
  digitalWrite(color2S1, HIGH);
  digitalWrite(color2S2, HIGH);
  digitalWrite(color2S3, HIGH);
  digitalWrite(color2in, LOW);
  //color sensor three
  pinMode(color3S0, OUTPUT);
  pinMode(color3S1, OUTPUT);
  pinMode(color3S2, OUTPUT);
  pinMode(color3S3, OUTPUT);
  pinMode(color3out, INPUT);
  digitalWrite(color3in, LOW);

  digitalWrite(color3S0, HIGH);
  digitalWrite(color3S1, HIGH);
  digitalWrite(color3S2, HIGH);
  digitalWrite(color3S3, HIGH);
  //color sensor four
  pinMode(color4S0, OUTPUT);
  pinMode(color4S1, OUTPUT);
  pinMode(color4S2, OUTPUT);
  pinMode(color4S3, OUTPUT);
  pinMode(color4out, INPUT);

  digitalWrite(color4S0, HIGH);
  digitalWrite(color4S1, HIGH);
  digitalWrite(color4S2, HIGH);
  digitalWrite(color4S3, HIGH);
  digitalWrite(color4in, LOW);
}

void loop() {
  //Distance Sensor, turns device on and off
  long duration, cm;

  pinMode(distancePin, OUTPUT);
  digitalWrite(distancePin, LOW);
  delay(100);
  digitalWrite(distancePin, HIGH);
  delay(100);
  digitalWrite(distancePin, LOW);

  pinMode(distancePin, INPUT);
  duration = pulseIn(distancePin, HIGH);

  cm = microsecondsToCentimeters(duration);

  //Serial.println(cm);

  //delay(100);

  //Force Sensor, controlling Color Sensor
  fsrReading1 = analogRead(fsrPin1);
  fsrReading2 = analogRead(fsrPin2);
  fsrReading3 = analogRead(fsrPin3);
  fsrReading4 = analogRead(fsrPin4);
  Serial.println(fsrReading1);
  Serial.println(fsrReading2);
  Serial.println(fsrReading3);
  Serial.println(fsrReading4);

  //if sensing something less than 40cm,
  //turn device on
  if (cm <= 40) {
  Serial.println("ON"); 
    //First Force Sensor - Square Shape
    if (fsrReading1 < 10) {
      //Serial.println("no touch");
      pinMode(fsrPin1, LOW);
      digitalWrite(color1S0, LOW);
      digitalWrite(color2S0, LOW);
      digitalWrite(color3S0, LOW);
      digitalWrite(color4S0, LOW);
      digitalWrite(color1in, LOW);
      digitalWrite(color2in, LOW);
      digitalWrite(color3in, LOW);
      digitalWrite(color4in, LOW);
    } else if (fsrReading1 > 10) {
      color1();
      //Serial.println("Square");
      digitalWrite(color1S0, HIGH);
      digitalWrite(color1in, HIGH);

      if (red < blue && red < green) {
        Serial.println("Red Square");
        delay(100);
      } else if (blue < red && blue < green) {
        Serial.println("Blue Square");
        delay(100);
      } else if (green < red && green < blue) {
        Serial.println("Green Square");
        delay(100);
      } else {
        Serial.println();
        delay(100);
      }
    }

    //Second Force Sensor - Circle Shape
    if (fsrReading2 < 10) {
      //Serial.println("no touch");
      digitalWrite(color1S0, LOW);
      digitalWrite(color2S0, LOW);
      digitalWrite(color3S0, LOW);
      digitalWrite(color4S0, LOW);
      digitalWrite(color1in, LOW);
      digitalWrite(color2in, LOW);
      digitalWrite(color3in, LOW);
      digitalWrite(color4in, LOW);
    } else if (fsrReading2 > 10) {
      color2();
      //Serial.println("Circle");
      digitalWrite(color2S0, HIGH);
      digitalWrite(color2in, HIGH);
      if (red < blue && red < green) {
        Serial.println("Red Circle");
        delay(100);
      } else if (blue < red && blue < green) {
        Serial.println("Blue Circle");
        delay(100);
      } else if (green < red && green < blue) {
        Serial.println("Green Circle");
        delay(100);
      } else {
        Serial.println();
        delay(100);
      }
    }

    //Third Force Sensor - Star Shape
    if (fsrReading3 < 10) {
      //Serial.println("no touch");
      digitalWrite(color1S0, LOW);
      digitalWrite(color2S0, LOW);
      digitalWrite(color3S0, LOW);
      digitalWrite(color4S0, LOW);
      digitalWrite(color1in, LOW);
      digitalWrite(color2in, LOW);
      digitalWrite(color3in, LOW);
      digitalWrite(color4in, LOW);
    } else if (fsrReading3 > 10) {
      color3();
      //Serial.println("Star");
      digitalWrite(color3S0, HIGH);
      digitalWrite(color3in, HIGH);
      if (red < blue && red < green) {
        Serial.println("Red Star");
        delay(100);
      } else if (blue < red && blue < green) {
        Serial.println("Blue Star");
        delay(100);
      } else if (green < red && green < blue) {
        Serial.println("Green Star");
        delay(100);
      } else {
        Serial.println();
        delay(100);
      }
    }

    //  //Forth Force Sensor - Triangle Shape
    if (fsrReading4 < 10) {
      //Serial.println("no touch");
      digitalWrite(color1S0, LOW);
      digitalWrite(color2S0, LOW);
      digitalWrite(color3S0, LOW);
      digitalWrite(color4S0, LOW);
      digitalWrite(color1in, LOW);
      digitalWrite(color2in, LOW);
      digitalWrite(color3in, LOW);
      digitalWrite(color4in, LOW);
    } else if (fsrReading4 > 10) {
      color4();
      //Serial.println("Triangle");
      digitalWrite(color4S0, HIGH);
      digitalWrite(color4in, HIGH);
      if (red < blue && red < green) {
        Serial.println("Red Triangle");
        delay(100);
      } else if (blue < red && blue < green) {
        Serial.println("Blue Triangle");
        delay(100);
      } else if (green < red && green < blue) {
        Serial.println("Green Triangle");
        delay(100);
      } else {
        Serial.println();
        delay(100);
      }
    }
  } else if (cm > 40) {
    Serial.println("OFF");
  }
}

//Distance function
long microsecondsToCentimeters(long microseconds) {
  return microseconds / 29 / 2;
}


//Color Code - First Color Sensor
void color1() {
  digitalWrite(color1S2, LOW);
  digitalWrite(color1S3, LOW);
  //count OUT, pRed, RED
  red = pulseIn(color1out, digitalRead(color1out) == HIGH ? LOW : HIGH);
  digitalWrite(color1S3, HIGH);
  //count OUT, pBLUE, BLUE
  blue = pulseIn(color1out, digitalRead(color1out) == HIGH ? LOW : HIGH);
  digitalWrite(color1S2, HIGH);
  //count OUT, pGreen, GREEN
  green = pulseIn(color1out, digitalRead(color1out) == HIGH ? LOW : HIGH);
}

//Second Color Sensor
void color2() {
  digitalWrite(color2S2, LOW);
  digitalWrite(color2S3, LOW);
  //count OUT, pRed, RED
  red = pulseIn(color2out, digitalRead(color2out) == HIGH ? LOW : HIGH);
  digitalWrite(color2S3, HIGH);
  //count OUT, pBLUE, BLUE
  blue = pulseIn(color2out, digitalRead(color2out) == HIGH ? LOW : HIGH);
  digitalWrite(color2S2, HIGH);
  //count OUT, pGreen, GREEN
  green = pulseIn(color2out, digitalRead(color2out) == HIGH ? LOW : HIGH);
}

//Third Color Sensor
void color3() {
  digitalWrite(color3S2, LOW);
  digitalWrite(color3S3, LOW);
  //count OUT, pRed, RED
  red = pulseIn(color3out, digitalRead(color3out) == HIGH ? LOW : HIGH);
  digitalWrite(color3S3, HIGH);
  //count OUT, pBLUE, BLUE
  blue = pulseIn(color3out, digitalRead(color3out) == HIGH ? LOW : HIGH);
  digitalWrite(color3S2, HIGH);
  //count OUT, pGreen, GREEN
  green = pulseIn(color3out, digitalRead(color3out) == HIGH ? LOW : HIGH);
}

//Fourth Color Sensor
void color4() {
  digitalWrite(color4S2, LOW);
  digitalWrite(color4S3, LOW);
  //count OUT, pRed, RED
  red = pulseIn(color4out, digitalRead(color4out) == HIGH ? LOW : HIGH);
  digitalWrite(color4S3, HIGH);
  //count OUT, pBLUE, BLUE
  blue = pulseIn(color4out, digitalRead(color4out) == HIGH ? LOW : HIGH);
  digitalWrite(color4S2, HIGH);
  //count OUT, pGreen, GREEN
  green = pulseIn(color4out, digitalRead(color4out) == HIGH ? LOW : HIGH);
}

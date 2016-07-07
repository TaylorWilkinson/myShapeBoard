import processing.serial.*;

int lf = 10;  // Line Feed in ASCII
int cr = 13;  // Carriage Returin in ASCII

int savedTime; 
int totalTime = 3000; 
int fade = 0; 

String val;  // To store data from serial port, used to color background
Serial port;  // The serial port object
String input;

PImage rightScreen;
PImage wrongScreen;
PImage welcomeScreen; 

//Shape Screens
PImage shapeStateImages[] = new PImage[4];
//Shape+Color Screens
PImage shapeColorStateImages[] = new PImage[12];

//Buttons
PImage shapeModeButton; //button default
PImage shapeModeButtonA; //button armed
PImage shapeColorModeButton; //button default
PImage shapeColorModeButtonA;  //button armed

//Button positions
int shapeButtonX         = 200;
int shapeButtonX2        = 471;
int shapeButtonY         = 500;  
int shapeButtonY2        = 585; 
int shapeColorButtonX    = 800; 
int shapeColorButtonX2   = 1071; 

//mode states
int shapeState = -1;
int shapeColorState; 

int answerState = 0;

//int screenState = 1;
//int colorState = 0; 

int gameState = 0; 
int time = 120;
int shape = 0; 
int shapeColor = 0;

boolean on = false; 

void setup() {  
  size(1280, 755); 
  getImages(); 

  port = new Serial(this, Serial.list()[2], 9600);
  port.bufferUntil('\n');

  savedTime = millis();
  
}

void draw() {
  background(255); 
   

  switch(shapeState) {

  case 0:
    imageMode(CORNER); 
    startScreen(); 
    break;

  case 1 :
    imageMode(CENTER); 
    image(shapeStateImages[0], width/2, height/2);
    squareShapeScreen();
    break;

  case 2 :
    imageMode(CENTER); 
    image(shapeStateImages[1], width/2, height/2);
    circleShapeScreen();
    break; 

  case 3 :
    imageMode(CENTER); 
    image(shapeStateImages[2], width/2, height/2);
    triangleShapeScreen();
    break;

  case 4 :
    imageMode(CENTER); 
    image(shapeStateImages[3], width/2, height/2);
    starShapeScreen();
    break;

  case 5:
    rightScreen(); 
    break; 

  case 6:
    wrongScreen();
    break;
  }

  switch(shapeColorState) {

    //Start Screen, go back to after case 23
    //case 0:
    //break;

  case 1: 
    imageMode(CENTER); 
    image(shapeColorStateImages[0], width/2, height/2);
    blueStar();
    break; 

  case 2:
    imageMode(CENTER); 
    image(shapeColorStateImages[1], width/2, height/2);
    greenStar();
    break;

  case 3:
    imageMode(CENTER); 
    image(shapeColorStateImages[2], width/2, height/2);
    redStar(); 
    break;

  case 4:
    imageMode(CENTER); 
    image(shapeColorStateImages[3], width/2, height/2);
    blueCircle();
    break;

  case 5:
    imageMode(CENTER); 
    image(shapeColorStateImages[4], width/2, height/2);
    greenCircle();
    break;

  case 6:
    imageMode(CENTER); 
    image(shapeColorStateImages[5], width/2, height/2);
    redCircle(); 
    break;

  case 7:
    imageMode(CENTER); 
    image(shapeColorStateImages[6], width/2, height/2);
    blueTriangle(); 
    break;

  case 8:
    imageMode(CENTER); 
    image(shapeColorStateImages[7], width/2, height/2);
    greenTriangle(); 
    break;

  case 9:
    imageMode(CENTER); 
    image(shapeColorStateImages[8], width/2, height/2);
    redTriangle();
    break;

  case 10:
    imageMode(CENTER); 
    image(shapeColorStateImages[9], width/2, height/2);
    blueSquare(); 
    break;

  case 11:
    imageMode(CENTER); 
    image(shapeColorStateImages[10], width/2, height/2);
    greenSquare();
    break;

  case 12:
    imageMode(CENTER); 
    image(shapeColorStateImages[11], width/2, height/2);
    redSquare(); 
    break;

  case 13:
    rightScreen();    
    break; 

  case 14:
    wrongScreen(); 
    break;

  //case 15:
  //  startScreen(); 
  //  break;

}

  if (shape == 1) {

    if (control()) {
      time = 120;
      shapeState = 2;
    }
  }

  if (shape == 2) {

    if (control()) {
      time = 120;
      shapeState = 1;
    }
  }

  if (shape == 3) {

    if (control()) {
      time = 120;
      shapeState = 3;
    }
  }

  if (shape == 4) {

    if (control()) {
      time = 120;
      shapeState = 2;
    }
  }

  if (shape == 5) {

    if (control()) {
      time = 120;
      shapeState = 4;
    }
  }

  if (shape == 6) {

    if (control()) {
      time = 120;
      shapeState = 3;
    }
  }

  if (shape == 7) {

    if (control()) {
      time = 120;
      shapeState = 0;
      shape = 0; 
    }
  }

  if (shape == 8) {

    if (control()) {
      time = 120;
      shapeState = 4;
    }
  }

  //color

  //STAR
  if (shapeColor == 1) {

    if (control()) {
      time = 120;
      shapeColorState = 2;
    }
  }

  if (shapeColor == 2) {

    if (control()) {
      time = 120;
      shapeColorState = 1;
    }
  }

  if (shapeColor == 3) {

    if (control()) {
      time = 120;
      shapeColorState = 3;
    }
  }

  if (shapeColor == 4) {

    if (control()) {
      time = 120;
      shapeColorState = 2;
    }
  }

  if (shapeColor == 5) {

    if (control()) {
     time = 120;
     shapeColorState = 4;
  
    }
  }

  if (shapeColor == 6) {

    if (control()) {
      time = 120;
      shapeColorState = 3;
    }
  }


  //STAR
  if (shapeColor == 7) {

    if (control()) {
      time = 120;
      shapeColorState = 5;
    }
  }

  if (shapeColor == 8) {

    if (control()) {
      time = 120;
      shapeColorState = 4;
    }
  }

  if (shapeColor == 9) {

    if (control()) {
      time = 120;
      shapeColorState = 6;
    }
  }

  if (shapeColor == 10) {

    if (control()) {
      time = 120;
      shapeColorState = 5;
    }
  }

  if (shapeColor == 11) {

    if (control()) {
      time = 120;
      shapeColorState = 7;
    }
  }

  if (shapeColor == 12) {

    if (control()) {
      time = 120;
      shapeColorState = 6;
    }
  }

  //TRIANGLE
  if (shapeColor == 13) {

    if (control()) {
      time = 120;
      shapeColorState = 8;
    }
  }

  if (shapeColor == 14) {

    if (control()) {
      time = 120;
      shapeColorState = 7;
    }
  }

  if (shapeColor == 15) {

    if (control()) {
      time = 120;
      shapeColorState = 9;
    }
  }

  if (shapeColor == 16) {

    if (control()) {
      time = 120;
      shapeColorState = 8;
    }
  }

  if (shapeColor == 17) {

    if (control()) {
      time = 120;
      shapeColorState = 10;
    }
  }

  if (shapeColor == 18) {

    if (control()) {
      time = 120;
      shapeColorState = 9;
    }
  }

  //SQUARE
  if (shapeColor == 19) {

    if (control()) {
      time = 120;
      shapeColorState = 11;
    }
  }

  if (shapeColor == 20) {

    if (control()) {
      time = 120;
      shapeColorState = 10;
    }
  }

  if (shapeColor == 21) {

    if (control()) {
      time = 120;
      shapeColorState = 12;
    }
  }

  if (shapeColor == 22) {

    if (control()) {
      time = 120;
      shapeColorState = 11;
    }
  }

  if (shapeColor == 23) {

      if (control()) {
      time = 120;
      shapeColor = 0;
      shapeState = 0;
      shapeColorState = 0; 
      }
  }

  if (shapeColor == 24) {

    if (control()) {
      time = 120;
      background(255); 
      shapeColorState = 12;
    }
  }
  
  if(input.equals("ON")) {
    shapeState = 0; 
  }  
}

void getImages() {
  shapeModeButton = loadImage("shapeButton.jpg"); 
  shapeModeButtonA= loadImage("shapeButtonActive.jpg"); 
  shapeColorModeButton = loadImage("shapeColorButton.jpg"); 
  shapeColorModeButtonA = loadImage("shapeColorButtonActive.jpg"); 

  //shape state images
  shapeStateImages[0] = loadImage("squareScreen.jpg"); 
  shapeStateImages[1] = loadImage("circleScreen.jpg"); 
  shapeStateImages[2] = loadImage("triangleScreen.jpg"); 
  shapeStateImages[3] = loadImage("starScreen.jpg"); 

  //shape+color state images
  shapeColorStateImages[0] = loadImage("blueStar.jpg"); 
  shapeColorStateImages[1] = loadImage("greenStar.jpg");
  shapeColorStateImages[2] = loadImage("redStar.jpg");
  shapeColorStateImages[3] = loadImage("blueCircle.jpg");
  shapeColorStateImages[4] = loadImage("greenCircle.jpg");
  shapeColorStateImages[5] = loadImage("redCircle.jpg");
  shapeColorStateImages[6] = loadImage("blueTriangle.jpg");
  shapeColorStateImages[7] = loadImage("greenTriangle.jpg");
  shapeColorStateImages[8] = loadImage("redTriangle.jpg");
  shapeColorStateImages[9] = loadImage("blueSquare.jpg");
  shapeColorStateImages[10] = loadImage("greenSquare.jpg");
  shapeColorStateImages[11] = loadImage("redSquare.jpg");

  rightScreen = loadImage("right.jpg");
  wrongScreen = loadImage("wrong.jpg");
  welcomeScreen = loadImage("welcomeScreen.jpg");
}

void startScreen() {

  int x1, y1; 

  image(shapeModeButton, shapeButtonX, shapeButtonY); 
  image(shapeColorModeButton, shapeColorButtonX, shapeButtonY); 

  x1 = mouseX; 
  y1 = mouseY; 

  if (y1 > shapeButtonY && y1 < shapeButtonY2) {
    if (x1 > shapeButtonX && x1 < shapeButtonX2) {
      image(shapeModeButtonA, shapeButtonX, shapeButtonY);
    } else if (x1 > shapeColorButtonX && x1 < shapeColorButtonX2) {
      image(shapeColorModeButtonA, shapeColorButtonX, shapeButtonY);
    }
  }
}

void startScreen2() {

 int x1, y1; 

 image(shapeModeButton, shapeButtonX, shapeButtonY); 
 image(shapeColorModeButton, shapeColorButtonX, shapeButtonY); 

 x1 = mouseX; 
 y1 = mouseY; 

 if (y1 > shapeButtonY && y1 < shapeButtonY2) {
   if (x1 > shapeButtonX && x1 < shapeButtonX2) {
     image(shapeModeButtonA, shapeButtonX, shapeButtonY);
   } else if (x1 > shapeColorButtonX && x1 < shapeColorButtonX2) {
     image(shapeColorModeButtonA, shapeColorButtonX, shapeButtonY);
   }
 }
}


void mousePressed() {
  int x = mouseX; 
  int y = mouseY; 

  if (y > shapeButtonY && y < shapeButtonY2) {
    if (x > shapeButtonX && x < shapeButtonX2) {
      image(shapeModeButtonA, shapeButtonX, shapeButtonY);
    } else if (x > shapeColorButtonX && x < shapeColorButtonX2) {
      image(shapeColorModeButtonA, shapeColorButtonX, shapeButtonY);
    }
  }

  //click shape mode
  if (y > shapeButtonY && y < shapeButtonY2 && 
    x > shapeButtonX && x < shapeButtonX2) {
    shapeState = 1;
  }

  //click shape + color mode 
  if (y > shapeButtonY && y < shapeButtonY2 &&
    x > shapeColorButtonX && x < shapeColorButtonX2) {
    shapeColorState = 1;
  }
}

void serialEvent (Serial port) {

  input = port.readStringUntil('\n');

  if (input != null) {
    input = trim(input);
  }

  println(input);
}

void reset() {
  background(255); 
  shapeButtonX         = 200;
  shapeButtonX2        = 471;
  shapeButtonY         = 500;  
  shapeButtonY2        = 585; 
  shapeColorButtonX    = 800; 
  shapeColorButtonX2   = 1071;

  startScreen();
}
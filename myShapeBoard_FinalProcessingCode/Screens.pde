void squareShapeScreen() {

  if (input.equals("Blue Square")|| input.equals("Red Square") || input.equals("Green Square")) {
    shapeState = 5;
    shape = 1;
  } else if (input.equals("Red Star") || input.equals("Blue Star") || 
    input.equals("Green Star") || input.equals("Blue Triangle") || input.equals("Red Triangle") ||
    input.equals("Green Triangle") || input.equals("Green Circle") || input.equals("Red Circle") || 
    input.equals("Blue Circle")) {
    shapeState = 6;
    shape = 2;
  }
}

void circleShapeScreen() {

  if (input.equals("Blue Circle")|| input.equals("Red Circle") || input.equals("Green Circle")) {
    shapeState = 5;
    shape = 3;
  } else if (input.equals("Red Star") || input.equals("Blue Star") || 
    input.equals("Green Star") || input.equals("Blue Triangle") || input.equals("Red Triangle") ||
    input.equals("Green Triangle") || input.equals("Green Square") || input.equals("Red Square") || 
    input.equals("Blue Square")) {
    shapeState = 6;
    shape = 4;
  }
}


void triangleShapeScreen() {

  if (input.equals("Blue Triangle")|| input.equals("Red Triangle") || input.equals("Green Triangle")) {
    shapeState = 5;
    shape = 5;
  } else if (input.equals("Red Star") || input.equals("Blue Star") || input.equals("Green Star") || input.equals("Blue Square") || input.equals("Red Square") ||
    input.equals("Green Square") || input.equals("Green Circle") || input.equals("Red Circle") || 
    input.equals("Blue Circle")) {
    shapeState = 6;
    shape = 6;
  }
}

void starShapeScreen() {

  if (input.equals("Blue Star")|| input.equals("Red Star") || input.equals("Green Star")) {
    shapeState = 5; 
    shape = 7;
  } else if (input.equals("Red Triangle") || input.equals("Blue Triangle") || input.equals("Green Triangle") || input.equals("Blue Square") || input.equals("Red Square") ||
    input.equals("Green Square") || input.equals("Green Circle") || input.equals("Red Circle") || 
    input.equals("Blue Circle")) {
    shapeState = 6;
    shape = 8;
  }
}

void blueStar() {

  if (input.equals("Blue Star")) {
    shapeColorState = 13;
    shapeColor = 1;
  } else if (input.equals("Red Star") || input.equals("Green Star") || input.equals("Blue Triangle") || input.equals("Green Triangle") ||
    input.equals("Red Triangle") || input.equals("Green Circle") || input.equals("Red Circle") || input.equals("Blue Circle") || input.equals("Green Square") ||
    input.equals("Blue Square") || input.equals("Red Square")) {
    shapeColorState = 14;
    shapeColor =  2;
  }
}

void greenStar() {

  if (input.equals("Green Star")) {
    shapeColorState = 13;
    shapeColor = 3;
  } else if (input.equals("Blue Star") || input.equals("Red Star") || input.equals("Blue Triangle") || input.equals("Green Triangle") ||
    input.equals("Red Triangle") || input.equals("Green Circle") || input.equals("Red Circle") || input.equals("Blue Circle") || input.equals("Green Square") ||
    input.equals("Blue Square") || input.equals("Red Square")) {
    shapeColorState = 14;
    shapeColor =  4;
  }
}

void redStar() {

  if (input.equals("Red Star")) {
    shapeColorState = 13;
    shapeColor = 5;
  } else if (input.equals("Blue Star") || input.equals("Green Star") || input.equals("Blue Triangle") || input.equals("Green Triangle") ||
    input.equals("Red Triangle") || input.equals("Green Circle") || input.equals("Red Circle") || input.equals("Blue Circle") || input.equals("Green Square") ||
    input.equals("Blue Square") || input.equals("Red Square")) {
    shapeColorState = 14;
    shapeColor =  6;
  }
}

void blueCircle() {

  if (input.equals("Blue Circle")) {
    shapeColorState = 13;
    shapeColor = 7;
  } else if (input.equals("Blue Star") || input.equals("Green Star") || input.equals("Blue Triangle") || input.equals("Green Triangle") ||
    input.equals("Red Triangle") || input.equals("Green Circle") || input.equals("Red Circle") || input.equals("Red Star") || input.equals("Green Square") ||
    input.equals("Blue Square") || input.equals("Red Square")) {
    shapeColorState = 14;
    shapeColor =  8;
  }
}

void greenCircle() {

  if (input.equals("Green Circle")) {
    shapeColorState = 13;
    shapeColor = 9;
  } else if (input.equals("Blue Star") || input.equals("Green Star") || input.equals("Blue Triangle") || input.equals("Green Triangle") ||
    input.equals("Red Triangle") || input.equals("Blue Circle") || input.equals("Red Circle") || input.equals("Red Star") || input.equals("Green Square") ||
    input.equals("Blue Square") || input.equals("Red Square")) {
    shapeColorState = 14;
    shapeColor =  10;
  }
}

void redCircle() {

  if (input.equals("Red Circle")) {
    shapeColorState = 13;
    shapeColor = 11;
  } else if (input.equals("Blue Star") || input.equals("Green Star") || input.equals("Blue Triangle") || input.equals("Green Triangle") ||
    input.equals("Red Triangle") || input.equals("Blue Circle") || input.equals("Green Circle") || input.equals("Red Star") || input.equals("Green Square") ||
    input.equals("Blue Square") || input.equals("Red Square")) {
    shapeColorState = 14;
    shapeColor =  12;
  }
}

void blueTriangle() {

  if (input.equals("Blue Triangle")) {
    shapeColorState = 13;
    shapeColor = 13;
  } else if (input.equals("Blue Star") || input.equals("Green Star") || input.equals("Red Star") || input.equals("Green Triangle") ||
    input.equals("Red Triangle") || input.equals("Blue Circle") || input.equals("Green Circle") || input.equals("Red Circle") || input.equals("Green Square") ||
    input.equals("Blue Square") || input.equals("Red Square")) {
    shapeColorState = 14;
    shapeColor =  14;
  }
}


void greenTriangle() {

  if (input.equals("Green Triangle")) {
    shapeColorState = 13;
    shapeColor = 15;
  } else if (input.equals("Blue Star") || input.equals("Green Star") || input.equals("Red Star") || input.equals("Blue Triangle") ||
    input.equals("Red Triangle") || input.equals("Blue Circle") || input.equals("Green Circle") || input.equals("Red Circle") || input.equals("Green Square") ||
    input.equals("Blue Square") || input.equals("Red Square")) {
    shapeColorState = 14;
    shapeColor =  16;
  }
}

void redTriangle() {

  if (input.equals("Red Triangle")) {
    shapeColorState = 13;
    shapeColor = 17;
  } else if (input.equals("Blue Star") || input.equals("Green Star") || input.equals("Red Star") || input.equals("Blue Triangle") ||
    input.equals("Green Triangle") || input.equals("Blue Circle") || input.equals("Green Circle") || input.equals("Red Circle") || input.equals("Green Square") ||
    input.equals("Blue Square") || input.equals("Red Square")) {
    shapeColorState = 14;
    shapeColor =  18;
  }
}

void blueSquare() {

  if (input.equals("Blue Square")) {
    shapeColorState = 13;
    shapeColor = 19;
    } else if (input.equals("Blue Star") || input.equals("Green Star") || input.equals("Red Star") || input.equals("Blue Triangle") ||
    input.equals("Green Triangle") || input.equals("Blue Circle") || input.equals("Green Circle") || input.equals("Red Circle") || input.equals("Green Square") ||
    input.equals("Red Triangle") || input.equals("Red Square")) {
    shapeColorState = 14;
    shapeColor =  20;
  }
}

void greenSquare() {

  if (input.equals("Green Square")) {
    shapeColorState = 13;
    shapeColor = 21;
    } else if (input.equals("Blue Star") || input.equals("Green Star") || input.equals("Red Star") || input.equals("Blue Triangle") ||
    input.equals("Green Triangle") || input.equals("Blue Circle") || input.equals("Green Circle") || input.equals("Red Circle") || input.equals("Blue Square") ||
    input.equals("Red Triangle") || input.equals("Red Square")) {
    shapeColorState = 14;
    shapeColor =  22;
    }
}


void redSquare() {

  if (input.equals("Red Square")) {
      shapeColorState = 13;
    shapeColor = 23;
    } else if (input.equals("Blue Star") || input.equals("Green Star") || input.equals("Red Star") || input.equals("Blue Triangle") ||
    input.equals("Green Triangle") || input.equals("Blue Circle") || input.equals("Green Circle") || input.equals("Red Circle") || input.equals("Blue Square") ||
    input.equals("Red Triangle") || input.equals("Green Square")) {
    shapeColorState = 14;
    shapeColor =  24;
    }
}
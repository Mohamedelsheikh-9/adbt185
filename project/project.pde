redRect redBox;
yellowRect yellowBox;
greenRect greenBox;



float x, y;
boolean redBoxScreen = false;
boolean blueBoxScreen = false;
boolean yellowBoxScreen = false;
boolean greenBoxScreen = false;
void setup() {
  size(600, 500);
  x = width/2;
  y = height/2;
  redBox = new redRect();
  yellowBox = new yellowRect();
  greenBox = new greenRect();
  file = new SoundFile(this, "fbi-open-up-sfx.mp3");
}


void draw() {

  background(0);
  textSize(35);
  fill(#FFFCFC);
  text("Please choose a colour to start", 50, 90); 
  text("or open the door (;", 50, 130); 

  rectMode(CENTER);

  fill(#FF0000); // red rect
  rect(150, 400, 120, 60);

  fill(#FFE603); // yellow rect
  rect(150, 250, 120, 60);


  fill(#1CFF00); // green rect
  rect(400, 250, 120, 60);
  fill(0);
  text("Door", 360, 260);

  if (redBoxScreen ) {
    redBox.ball();
    redBox.displayMessage();
  }
  if (yellowBoxScreen) {
    yellowBox.play();
    yellowBox.displayMessage();
  }
  if (greenBoxScreen) {
    greenBox.display();
  }
}

void mousePressed() {
  //red rect
  if (mousePressed == true && mouseY >= 400-30 && mouseY <= 400+30 && mouseX <= 150+60 && mouseX >= 150-60) {
    redBoxScreen = true;
  }
  //yellow rect
  if (  mousePressed == true && mouseY >= 250-30 && mouseY <= 250+30 && mouseX <= 150+60 && mouseX >= 150-60 ) {
    yellowBoxScreen = true;
  }
  // green rect
  if ( mousePressed == true&& mouseY >= 250-30 && mouseY <= 250+30 && mouseX <= 400+60 && mouseX >= 400-60) {
    greenBoxScreen = true;
  }
}
void keyPressed() {
  if (key == 'r') {
    redBox.redBall();
  }
  if (key == 'g') {
    redBox.greenBall();
  }
  if (key == 'b') {
    redBox.blueBall();
  }
  if (key == 'm') {
    redBox.manyColor();
  }
}

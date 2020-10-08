ArrayList<Ball> balls;

class redRect
{
  redRect() {
    size(600, 500);
    balls = new ArrayList();
    balls.add (new Ball());
  }
  void ball() {
    background(0);

    for (Ball ball : balls) {
      ball.diameter = random(10, 10);
      ball.draw();
      ball.move();
    }
  }  
  void redBall() {

    for (int i=0; i<50; i++) {     
      Ball redBall = new Ball();
      redBall.diameter = 3;
      balls.add(redBall);
      redBall.colour = color(255, 0, 0);
    }
  } 

  void greenBall()
  {
    for (int i=0; i<50; i++) {     
      Ball greenBall = new Ball();
      greenBall.diameter = 3;
      balls.add(greenBall);
      greenBall.colour = color(0, 255, 0);
    }
  }

  void blueBall() {
    for (int i=0; i<50; i++) {     
      Ball blueBall = new Ball();
      blueBall.diameter = 3;
      balls.add(blueBall);
      blueBall.colour = color(0, 0, 255);
    }
  }
  void displayMessage() {
    fill(#FFFFFF);
    textSize(17);
    text("Press any of these buttons to play; r,g,b,m. HOLD m to slow it down", 20, 20);
  }


  void manyColor() {
    for (int i=0; i<500; i++) {
      Ball smallBall = new Ball();
      smallBall.diameter = 3;
      balls.add(smallBall);
      smallBall.colour = color(random(0, 255), random(0, 255), random(0, 255));
    }
  }
}

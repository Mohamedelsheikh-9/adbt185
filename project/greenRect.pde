import processing.sound.*;
SoundFile file; 

class greenRect {
  greenRect() {
    size(600, 500);
  }

  void display() {
    background(0);
    rectMode(CENTER);
    fill(#FFFFFF);
    rect(350, 250, 200, 350);

    fill(0);
    text("The Door", 250, 120);

    if (mousePressed) {
      if (mouseX>350-100 && mouseX <350+100 && mouseY> 250-175 && mouseY <250+175) {
        file.play();
      }
    }
  }
}

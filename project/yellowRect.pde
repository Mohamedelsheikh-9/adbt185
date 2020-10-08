recursiveClass res;
class yellowRect {

  yellowRect() {
    size(600, 500);
    res = new recursiveClass();
  }

  void play() {
    background(0);
    res.recursivePart(float(width/2), float( height/2), float( 300));
  }
  void displayMessage() {
    fill(#FFFFFF);
    textSize(13);
    text("This game is to create random linked different sizes circles on the screen continuously", 20, 20);
  }
}

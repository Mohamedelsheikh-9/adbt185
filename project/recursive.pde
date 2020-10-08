float  sz, a, ny, nx;
class recursiveClass {
  recursiveClass() { 
    size(600, 500);
  }

  void recursivePart(Float x, Float y, Float sz) {

    fill(lerpColor(#F78B25, #027AF7, random(3)), 100);
    ellipse(x, y, sz, sz);
    if (sz>2) {
      a = random(TWO_PI);
      nx = x +sz/2 * sin(a);
      ny = y +sz/2 * cos(a);
      recursivePart(nx, ny, sz/2);
      a = random(TWO_PI);
      nx = x +sz/2 * sin(a);
      ny = y +sz/2 * cos(a);
      recursivePart(nx, ny, sz/2);
      a = random(TWO_PI);
      nx = x +sz/2 * sin(a);
      ny = y +sz/2 * cos(a);
      recursivePart(nx, ny, sz/2);
    }
  }
}

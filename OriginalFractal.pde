float size = 5;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  drawFractal(width/2, height/2, size);
}

void drawFractal(float x, float y, float d) {
  rectMode(CENTER);
  rect(x, y, d, d);

  if (d > 2) {
    fill(255);
    drawFractal(x + d/2, y, d/2);
    drawFractal(x - d/2, y, d/2);
    drawFractal(x, y + d/2, d/2);
    drawFractal(x, y - d/2, d/2);
  }
}

void keyPressed() {
  if (key == 'd') {
    size *= 0.75;
  } else if (key == 's') {
    size *= 1.5;
  }
}

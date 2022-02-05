int x = 200;
int y = 200;
int len2 = 300;
public void setup() {
  size(1000, 800);
}

public void draw() {
  background(0);
  if (keyPressed == true) {
    if (key == 'a')
      x -= 10;
    if (key == 'd')
      x += 10;
    if (key == 'w')
      y -= 10;
    if (key == 's')
      y += 10;
  }
  if (mousePressed == true)
     len2 += 10;
  
  sierpinski(x, y, len2);
}

public void sierpinski(int x, int y, int len) {
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

  if (len <= 20) {
    triangle(x, y, x+len, y, x+(len/2), y+len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y+len/2, len/2);
  }
}

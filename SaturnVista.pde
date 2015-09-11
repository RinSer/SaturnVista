float cs; 
float ss;
float sy;
float cy;
float clr;

void rcircle(float t, float r, color c) {
  pushMatrix();
  translate(0, t, 0);
  rotateX(PI/4);
  smooth();
  stroke(c);
  strokeWeight(5);
  noFill();
  ellipse(width/2, height/2, r, r);
  popMatrix();
}

void setup() {
  size(600, 600, P3D);
  background(0);
  colorMode(HSB);
}

void draw() { 
  float y = map(mouseY, 0, height, 0, TWO_PI);
  float x = map(mouseX, 0, height, 0, TWO_PI);
  clr = map(mouseX, 0, width,  0, 255);
  color rc = color(clr, 255, 255);
  color rd = color(clr-12.5, 225, 255);
  color re = color(clr-25, 205, 255);
  cs = cos(y)*100;
  ss = sin(y)*100;
  sy = sin(y);
  cy = cos(y);
  background(0);
  pushMatrix();
  translate(width/2, height/3);
  smooth();
  noStroke();
  directionalLight(clr, 255, 255, sin(x), -sy, 0);
  fill(rc);
  rotateZ(x);
  sphere(35);
  popMatrix();
  rcircle(sy*60, cs, rd);
  rcircle(cy*60, ss, rd);
  rcircle(sy*50, cs*0.8, rc);
  rcircle(cy*50, ss*0.8, rc);
  rcircle(sy*70, cs*1.2, re);
  rcircle(cy*70, ss*1.2, re);
  rcircle(sy*60+5, cs+5, rd);
  rcircle(cy*60+5, ss+5, rd);
  rcircle(sy*50+5, cs*0.8+5, re);
  rcircle(cy*50+5, ss*0.8+5, re);
  rcircle(sy*70+5, cs*1.2+5, rc);
  rcircle(cy*70+5, ss*1.2+5, rc);
  pushMatrix();
  translate(-110, 0, 0);
  pushMatrix();
  translate(width/2-75, height/3);
  smooth();
  noStroke();
  directionalLight(clr, 255, 255, sin(x), -sy, 0);
  fill(rc);
  rotateZ(x);
  sphere(35);
  popMatrix();
  rcircle(sy*60, cs, rd);
  rcircle(cy*60, ss, rd);
  rcircle(sy*50, cs*0.8, rc);
  rcircle(cy*50, ss*0.8, rc);
  rcircle(sy*70, cs*1.2, re);
  rcircle(cy*70, ss*1.2, re);
  rcircle(sy*60+5, cs+5, rd);
  rcircle(cy*60+5, ss+5, rd);
  rcircle(sy*50+5, cs*0.8+5, re);
  rcircle(cy*50+5, ss*0.8+5, re);
  rcircle(sy*70+5, cs*1.2+5, rc);
  rcircle(cy*70+5, ss*1.2+5, rc);
  popMatrix();
  pushMatrix();
  translate(110, 0, 0);
  pushMatrix();
  translate(width/2+75, height/3);
  smooth();
  noStroke();
  directionalLight(clr, 255, 255, sin(x), -sy, 0);
  fill(rc);
  rotateZ(x);
  sphere(35);
  popMatrix();
  rcircle(sy*60, cs, rd);
  rcircle(cy*60, ss, rd);
  rcircle(sy*50, cs*0.8, rc);
  rcircle(cy*50, ss*0.8, rc);
  rcircle(sy*70, cs*1.2, re);
  rcircle(cy*70, ss*1.2, re);
  rcircle(sy*60+5, cs+5, rd);
  rcircle(cy*60+5, ss+5, rd);
  rcircle(sy*50+5, cs*0.8+5, re);
  rcircle(cy*50+5, ss*0.8+5, re);
  rcircle(sy*70+5, cs*1.2+5, rc);
  rcircle(cy*70+5, ss*1.2+5, rc);
  popMatrix();
}
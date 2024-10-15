PImage pixil;

float rotX = 0, rotY = 0;
float speed = 0.01;

void setup() {
  size(800, 600, P3D);
  pixil = loadImage("cool.png");
}

void draw() {
  background(0);
  //lights();

  fill(255);
  textAlign(CENTER, TOP);
  textSize(100);
  text("subscribe", width / 2, 10);

  drawPixil();
  speed += 0.0001;
}

void drawPixil() {
  pushMatrix();
  translate(width / 2, height / 2);
  rotateX(rotX);
  rotateY(rotY);
  imageMode(CENTER);
  image(pixil, 0, 0);
  popMatrix();

  rotX += speed;
  rotY += speed;
}

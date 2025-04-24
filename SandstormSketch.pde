int numParticles = 500;
Particle[] particles = new Particle[numParticles];

void setup() {
  size(800, 600);
  for (int i = 0; i < numParticles; i++) {
    particles[i] = new Particle();
  }
  background(20);
}

void draw() {
  fill(20, 20);
  rect(0, 0, width, height);
  
  for (Particle p : particles) {
    p.update();
    p.display();
  }
}

class Particle {
  float x, y, speedX, speedY;

  Particle() {
    x = random(width);
    y = random(height);
    speedX = random(-1, 2);
    speedY = random(-1, 1);
  }

  void update() {
    x += speedX;
    y += speedY;
    if (x < 0) x = width;
    if (x > width) x = 0;
    if (y < 0) y = height;
    if (y > height) y = 0;
  }

  void display() {
    stroke(255, 204, 100);
    point(x, y);
  }
}

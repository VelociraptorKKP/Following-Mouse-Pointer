class Mover {
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  Mover() {
    position = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(position);
    mouse.setMag(0.5);
    acceleration = mouse;
    velocity.add(acceleration);
    position.add(velocity);
    velocity.limit(5);
  }
  
  void edge() {
    if (position.x > width) {
      position.x = 0;
    }
    if (position.x < 0) {
      position.x = width;
    }
    if (position.y > height) {
      position.y = 0;
    }
    if (position.y < 0) {
      position.y = height;
    }
  }
  
  void render() {
    fill(255);
    ellipse(position.x, position.y, 48, 48);
  }
}

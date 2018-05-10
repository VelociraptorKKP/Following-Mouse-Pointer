Mover m;

void setup() {
  size(640, 480);
  m = new Mover();
}

void draw() {
  background(0);
  m.update();
  m.edge();
  m.render();
}

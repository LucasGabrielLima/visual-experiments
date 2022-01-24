float time = 0;
void setup() {
  size(1000, 1000);
}

void draw() {
  background(255);

  float x= 0;
  while (x < width) {
    for(int i = 0; i < 50; i++){
      point(x,  100* i * noise(x / 100, time) );
    }

    x = x + 1;
  }
  
  time = time + 0.01;
}

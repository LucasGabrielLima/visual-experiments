float t = 0;

void setup(){
  background(20);
  size(500, 500);
}

void draw(){
  background(30);
  stroke(205, 203, 166);
  strokeWeight(5);
  
  translate(width/2, height/2);
  
  for(int i = 0; i < 25; i++){
    stroke(250 - i, 150, 100 + i * 8);
    line(x1(t + i), y1(t + i), 0, 0);
  }
  
  t+=0.8;

}

float x1(float t){
  return sin(t / 10) * 100 + sin(t/15) * 100;
}

float y1(float t){
  return cos(t / 10) * 100;
}

float x2(float t){
  return cos(t / 10) * 100;
}

float y2(float t){
  return sin(t / 10) * 100 + sin(t/15) * 100;
}

float t = 0;
float descend = 0;

void setup(){
  background(20);
  size(1000, 1000);
}

void draw(){
  background(#008891);
  stroke(205, 203, 166);
  strokeWeight(5);
  
  translate(width/2, height/2);
  
  for(int i = 0; i < 12; i++){
    stroke(235 - i * 4, 200, 150 + i*6);
    line(x1(t + i), y1(t + i), x1(t + i), y2(t + i));
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

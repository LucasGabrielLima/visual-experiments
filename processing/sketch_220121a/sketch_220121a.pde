int ball_size = 32;
int pos_x = 16;
int pos_y = 984;
int offset = 48;
int i = 0;

void setup() {
  size(1000, 1000);
  background(255);
  noStroke();

}

void draw() {
  

  
  fill(255,0,0);
  ellipse(pos_x, pos_y, ball_size, ball_size);
  
  fill(127,0,0);
  ellipse(pos_x + offset, pos_y, ball_size, ball_size);
  
  fill(255,200,200);
  ellipse(pos_x + offset*2, pos_y, ball_size, ball_size);
  
  i++;
  pos_y -= 36;
  
  if (pos_x > width) {
    noLoop();
  }
  if (pos_y < 0) {
    pos_y = 984;
    pos_x += 36 * 4;
  }
   //<>//
  
}

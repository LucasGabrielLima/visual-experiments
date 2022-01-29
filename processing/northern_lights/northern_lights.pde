int num = 2000;
int range = 30;

float[] ax = new float[num];
float[] ay = new float[num]; 


void setup() 
{
  size(1000, 1000);
  colorMode(HSB);
  noStroke();
  filter( BLUR, 6 );
  
  for(int i = 0; i < num; i++) {
    ax[i] = width/2;
    ay[i] = height/2;
  }
  frameRate(30);
}

void draw() 
{
  background(10);
  
  // Shift all elements 1 place to the left
  for(int i = 1; i < num; i++) {
    ax[i-1] = ax[i];
    ay[i-1] = ay[i];
  }

  // Put a new value at the end of the array
  ax[num-1] += random(-range, range);
  ay[num-1] += random(-range, range);

  // Constrain all points to the screen
  ax[num-1] = constrain(ax[num-1], 0, width);
  ay[num-1] = constrain(ay[num-1], 0, height);
  
  // Draw a line connecting the points
  for(int i=1; i<num; i++) {    
    float co = 255 * noise(i);
    float val = float(i)/num * 3;
    fill(co, 255, 255);
    ellipse(ax[i-1], ay[i-1], val, val);
  }
  filter( BLUR, 1.3 );
}

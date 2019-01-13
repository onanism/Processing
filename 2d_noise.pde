float inc = 0.01;
float z_start = 0.0;  
float zinc= 0.01;

void setup() {
  size(500, 500);
  frameRate(120);
}

void draw() {
  loadPixels();
  float x_start = 0.0;
  for (int x = 0; x < width; x++) {
    x_start += inc; 
    float y_start = 0.0;   
    for (int y = 0; y < height; y++) {
      y_start += inc; 
      float brightness = 255 * noise(x_start,y_start,z_start);
      pixels[x+y*width] = color(brightness,brightness,brightness);
    }
  }
  updatePixels();
  z_start += zinc;
  saveFrame("######.png");
}

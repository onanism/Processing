int height = 1000;
int width = 1000;
int[][] fire_pixels= new int[width][height];
int setted=0;
void setup() {
  size(1000, 1000);
  frameRate(60);
  background(0);
for (int a = 0; a <= width - 1; a++){
  for(int b = 0; b <= height - 1; b++){
    fire_pixels[a][b] = 0;
  }  
}
}

color colors[]={#070707,#1f0707,#2f0f07,#470f07,#571707,#671f07,#771f07,#8f2707,#9f2f07,#af3f07,#bf4707,#c74707,#DF4F07,#DF5707,#D75F07,#D7670F,#cf6f0f,#cf770f,#CF8717,
#C78717,#C7971F,#BF9F1F,#BFA727,#BFAF2F,#B7AF2F,#B7B72F,#B7B737,#CFCF6F,#DFDF9F,#EFEFC7,#FFFFFF};

void draw() {
//bottom line  
if (setted == 0){
  for (int a = 0; a <= width - 1; a++){
  for(int b = 0; b <= height - 1; b++){
    fire_pixels[a][b] = 0;
  }  
}
  for (int d = 0;d <= width - 1; d++){
  fire_pixels[d][height-1]=30;
  setted = 1;
}
}

for(int x = 1;x <=width - 1;x++){
  for(int y = 0; y <= height-2; y++){
    if((fire_pixels[x][y+1]) > 0){
      fire_pixels[x][y]=(fire_pixels[x][y+1])-int(random(0,2));}
  }}
for(int x = 0; x <= width - 1; x++){
  for(int y = height -1 ;y >= 0; y--){
    stroke(colors[(fire_pixels[x][y])]);
    point(x,y);

}}

}

PImage pic1;
PImage pic2;
PImage pic3;
PImage pic4;
PImage pic5;
PImage pic6;
PImage[] pic;

void setup()
{
  frameRate(10000); // default frame rate is 60; frame rate is how many times the canvas will "refresh" every second
  fullScreen();
  pic1 = loadImage("file2.png");
  pic2 = loadImage("file3.png");
  //pic3 = loadImage("file3.png");
  //pic4 = loadImage("file4.png");
  //pic5 = loadImage("file5.png");
  //pic6 = loadImage("file6.png");
  pic = new PImage[2];
  pic[0] = pic1;
  pic[1] = pic2;
  //pic[2] = pic3;
  //pic[3] = pic4;
  //pic[4] = pic5;
  //pic[5] = pic6;
  
  for(int m = 0; m < pic.length; m++)
  {
    pic[m].resize(width,0);
  }
  background(225);
}

void draw()
{
  float radius = 3;
  int x = 0;
  int y = 0;
  float w = width;
  float h = height;
  for(int i = 0; i < 50; i++)//why 50
  {
    x = (int) random(w);
    y = (int) random(h);
    //for(int j = 0; j < pic.length; j++)
    //{
      int j = (int) random(0, 2);//6);
      color c = pic[j].get(x, y);
      stroke(c);
      fill(c);
      ellipse(x, y, radius, radius);
    //}
  }
}
class Img
{
  PImage img;
  //color[] colarr;
  Img()
  {
    img = loadImage("OpnS.png");
    img.resize(width,height);
    //colarr = new color[img.width*img.height];
  }
  
  
  color returnColor(int x, int y)
  {
    img.loadPixels();
    color c;
    int loc =   x   + y * img.width;
    c = img.pixels[loc];
    return c;
  }
}

Img img;
ArrayList<Population> populationList;
boolean start = false;

int timeinterval = 200;
int time = 0;
void setup() {
  
  size(720, 720);

  // The number of cycles we will allow a generation to live
  img = new Img();
  background(0);
  populationList = new ArrayList<Population>();

}

void draw() {
  //background(0);
  for(int i=0; i<populationList.size(); ++i)
  {
    populationList.get(i).live();
    populationList.get(i).checkDie();
  }
  //time++;
  //if(time > 500)time = 0;
  // Draw the start and target positions
  //fill(255);
  //ellipse(target.x,target.y,24,24);
  //if(start)population.live();
}

void mousePressed() 
{
  if(mouseButton == LEFT)
  {
    Population population;
    population = new Population(100, mouseX, mouseY);
    populationList.add(population);
  }
  else
  {
    populationList.remove(populationList.size()-1);
  }
}

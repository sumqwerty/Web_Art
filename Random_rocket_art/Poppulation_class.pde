class Population
{
  
  //Rocket[] population;
  ArrayList<Rocket> population;
  
  Population(int num, int x, int y) {
    //population = new Rocket[num];
    population = new ArrayList<Rocket>();
    //make a new set of creatures
    for (int i = 0; i < num; i++) {
      //PVector position = new PVector(width/2,height+20);
      PVector position = new PVector(x,y);
      population.add(new Rocket(position, new DNA(height)));
      //population[i] = new Rocket(position, new DNA(height));
    }
  }
  
  void live() {
    // Run every rocket
    for (int i = 0; i < population.size(); i++) {
      population.get(i).run();
    }
    //println(population.size());
  }
  
  void checkDie()
  {
    for (int i = 0; i < population.size(); i++) {
      if(population.get(i).TimeToKill())population.remove(i);
    }
  }
  
}

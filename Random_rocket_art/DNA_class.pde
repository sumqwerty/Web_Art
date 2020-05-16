class DNA
{
  PVector[] genes;
  float maxforce = 0.1;
  
  DNA(int no_of_vec)
  {
    genes = new PVector[no_of_vec];
    for(int i=0; i<genes.length; ++i)
    {
      genes[i] = PVector.random2D();
      genes[i].mult(random(0, maxforce));
    }
  }
}

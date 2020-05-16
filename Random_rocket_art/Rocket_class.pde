class Rocket
{
  DNA dna;
  float fitness;
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float r;
  
  color col;
  
  int geneCounter = 0;
  
  boolean hitTarget = false;   // Did I reach the target
  
  //constructor
  Rocket(PVector l, DNA dna_) {
    acceleration = new PVector();
    velocity = new PVector();
    location = l.get();
    r = 1;
    dna = dna_;
    col = color(random(255),random(255),random(255));
  }
  
  
  void run() {
    applyForce(dna.genes[geneCounter]);
    geneCounter = (geneCounter + 1) % dna.genes.length;
    update();
    display();
  }
  
  void applyForce(PVector f)
  {
    acceleration.add(f);
  }
  
  void update()
  {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  
  boolean TimeToKill()
  {
    if(location.x > width || location.x < 0 || location.y < 0 || location.y > height)
      return true;
    else return false;
  }
  
  void display() {
    float theta = velocity.heading2D() + PI/2;
    //fill(200, 100);
    noStroke();
    //stroke(0);
    pushMatrix();
    translate(location.x, location.y);
    rotate(theta);

    // Thrusters
    //rectMode(CENTER);
    //fill(0);
    //rect(-r/2, r*2, r/2, r);
    //rect(r/2, r*2, r/2, r);

    // Rocket body
    //fill(175);
    //if(time % timeinterval == 0)col = color(random(255),random(255),random(255));
    //fill(col);
    if(location.x < width && location.y < height && location.x > 0 && location.y > 0)fill(img.returnColor(int(location.x),int(location.y)));
    beginShape(TRIANGLES);
    vertex(0, -r*2);
    vertex(-r, r*2);
    vertex(r, r*2);
    endShape();

    popMatrix();
  }
}

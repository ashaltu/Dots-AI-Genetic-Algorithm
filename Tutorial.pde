Population test;
PVector goal  = new PVector(400, 10); // parameters is location of goal


void setup() {
  size(800, 800); //size of the window
  frameRate(100);//increase this to make the dots go faster
  test = new Population(1000);//create a new population with 1000 members
}


void draw() { 
  background(255);

  //draw goal
  fill(0, 255, 0);
  ellipse(goal.x, goal.y, 10, 10);

  //draw obstacle(s)
  fill(0, 0, 255); //paintbrush becomes blue

//  rect(0, 300, 600, 10); // x=0,y=300,width=600,height=10
//  rect(200, 500, 600, 10); // x=200,y=500,width=600,height=10


  if (test.allDotsDead()) {
    //genetic algorithm
    test.calculateFitness();
    test.naturalSelection();
    test.mutateDemBabies();
  } else {
    //if any of the dots are still alive then update and then show them

    test.update();
    test.show();
  }
}

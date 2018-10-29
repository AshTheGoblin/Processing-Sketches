PVector location;
PVector velocity;

color cream = #EFEAC5;
color teal = #1B8798;
color yellow = #E7D84B;
color pink = #D61C59;
color purple = #360745;

Walker m;
Walker n;
Walker o;
Walker p;


void setup() {
  //size(1366, 768);
  fullScreen(1);
  frameRate(3000);
  background(cream);
  location = new PVector(width/2, height/2);
  velocity = new PVector(1, 1);

  m = new Walker(yellow);
  n = new Walker(teal);
  o = new Walker(pink);
  p = new Walker(purple);
}

void draw() {
  /*noStroke();
   fill(cream);
   rect(0,0,width,height);
   */
  m.move();
  m.display();  
  n.move();
  n.display();  
  o.move();
  o.display();  
  p.move();
  p.display();

  /*
  // Add the current speed to the location.
   location.add(velocity);
   
   // We still sometimes need to refer to the individual components of a PVector 
   // and can do so using the dot syntax (location.x, velocity.y, etc.)
   if ((location.x > width) || (location.x < 0)) {
   velocity.x = velocity.x * -1;
   }
   if ((location.y > height) || (location.y < 0)) {
   velocity.y = velocity.y * -1;
   }
   
   
   // Display circle at x location
   stroke(purple);
   fill(pink);
   ellipse(location.x,location.y,16,16);*/
}

class Walker {
  int X, Y; 
  color c;

  Walker(color c) {
    this.c=c;   
    X=int(random(width));
    Y=int(random(height/2));
  }

  void display() {
    stroke(c);
    point(X, Y);
  }

  void move() {

    int choice = int(random(4));

    if (choice==0) {
      X--;
    } else if (choice==1) {
      Y--;
    } else if (choice==2) {
      X++;
    } else {
      Y++;
    }
    X=constrain(X, 0, width-1);
    Y=constrain(Y, 0, height-1);
  }
}

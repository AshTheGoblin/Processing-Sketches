/*private color lightest = #EBF7F8;
 private color lighter = #D0E0EB;
 private color darker= #88ABC2;
 private color darkest = #49708A;
 private color green =        
 */
Drawer drawer;

void setup() {
  fullScreen(1);
  background(255);
  drawer  = new Drawer();
}

void draw() {
  frameRate(10);

  //drawer.setColor();
  if (keyPressed) {
    drawer.display();
  }
  
}

class Drawer {
  ArrayList<String> values ;
  color[] colors;
  //private PVector location;
  color c;

  public Drawer() {
    // this.location = new PVector(random(width), random(height));
    colors = new color[5];
    colors[0]=#EBF7F8;
    colors[1]=#D0E0EB;
    colors[2]=#88ABC2;
    colors[3]=#49708A;
    colors[4]=#CAFF42;
  }

  void display() {
    c=int(random(5));
    noStroke();
    fill(colors[c]);
    triangle(random(width), random(height), random(width), random(height), random(width), random(height));
  }
}

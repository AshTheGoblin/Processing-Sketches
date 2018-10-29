PFont f;
ArrayList<Key> keys;
boolean keyboard= false;

void setup() {
  fullScreen(1);
  f=createFont("Bahnschrift", 300, true);
  textFont(f);
  keys = new ArrayList();
  frameRate(60);
}

void draw() {
  fill(#FF5254);
  rect(0, 0, width, height);

  for (Key k : keys) {
    k.display();
    k.fall();
  }
}

void mousePressed() {
  if (!keyboard) {
    openKeyboard();
    keyboard = true;
  } else {
    closeKeyboard();
    keyboard = false;
  }
}

void keyPressed() {
  keys.add(new Key());
}

class Key {
  PVector location, velocity;
  char k;
  color c;

  public Key() {
    this.c = 0;
    this.k=key;
    this.location = new PVector(random(width), random(height));
    this.velocity = new PVector(0, int(random(1, 11)));
  }

  void display() {
    fill(c);
    text(k, location.x, location.y);
  }

  void fall() {
    this.location.add(velocity);

    if (this.location.y-textAscent()>height) {
      //copy the arrayList
      ArrayList<Key> currentKeys = new ArrayList(keys);
      //remove from new list
      currentKeys.remove(this);
      keys=currentKeys;
    }
  }
}

PFont f;
ArrayList<Clock> clocks;

void setup() {
  fullScreen(1);
  f=createFont("Bahnschrift", 300, true);
  textFont(f);
  clocks = new ArrayList();
}

void draw() {
  fill(#FF5254);
  rect(0, 0, width, height);

  for (Clock c : clocks) {
    c.display();
    c.fall();
  }
}

void keyPressed() {
  clocks.add(new Clock());
}

class Clock {
  PVector location, velocity;
  String s, m, h;
  String time;
  public Clock() {

    this.location = new PVector(random(width), random(height));
    this.velocity = new PVector(0, 11);
  }

  void display() {
    fill(255);
        this.s = seconds();
    this.m=minutes();
    this.h = hours();
    this.time=h+":"+m+":"+s;
    text(time, location.x, location.y);
  }

  void fall() {
    this.location.add(velocity);

    if (this.location.y-textAscent()>height) {
      //copy the arrayList
      ArrayList<Clock> currentClocks = new ArrayList(clocks);
      //remove from new list
      currentClocks.remove(this);
      clocks=currentClocks;
    }
  }

  String seconds() {

    if (second()<10) {
      return "0"+second();
    }
    return second()+"";
  }

  String minutes() {
    if (minute()<10) {
      return "0"+ minute();
    }
    return minute()+"";
  }

  String hours() {
    if (hour()<1) {
      return "12";
    }
    if (hour()<10) {
      return "0"+hour();
    }
    return hour()+"";
  }
}

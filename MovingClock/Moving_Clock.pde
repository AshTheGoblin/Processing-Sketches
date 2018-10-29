
PFont f;
PVector location, velocity;
String s, m, h;
String time;



void setup() {
  fullScreen(1);  
  f=createFont("Bahnschrift", 12, true);
  textFont(f, 300);
  location = new PVector(0, 0);
  velocity = new PVector(2, 3);
}

void draw() {

  s= seconds();  
  m= minutes();
  h = hours();

  time = hours()+":"+minutes()+":"+seconds();

  translate(width/2, height/2);
  //fill(34);
  fill(#8CD19D);
  rect(width/2*-1, height/2*-1, width, height);

  fill(255);
  textAlign(LEFT);
  text(time, location.x, location.y);

  location.add(velocity);
  if (location.x>(width/2)-textWidth(time)||location.x<width/2*-1) {
    velocity.x*=-1;
  }
  if (location.y>height/2||location.y<height/2*-1+textHeight()) {
    velocity.y*=-1;
  }
}

float textHeight() {
  //*.8 accounts for innacuracy of textAscent()
  return textAscent()*.8;
}

String seconds() {

  if (second()<10) {
    return "0"+second();
  }
  return second()+"";
}

String minutes(){
  if (minute()<10) {
    return "0"+ minute();
  }
  return minute()+"";
}

String hours(){
  if (hour()<1){return "12";}
  if (hour()<10) {
    return "0"+hour();
  }
  return hour()+"";
}

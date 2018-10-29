color stardo = #5E412F;
color germania = #FCEBB6;
color covered = #78C0A8;
color ubuntu  = #F07818;
color pirata = #F0A830;

void setup(){
size(800,600);
background(ubuntu);


}
void draw(){
  
      if (mousePressed) {
      ellipse(mouseX, mouseY, 367, 50);}
      
  
  beginShape();
  fill(germania);
  noStroke();
  vertex(0, 0);
  vertex(350,200);
  vertex(50, 50);
  vertex(50, 0);
  vertex(345, 353);
  endShape(CLOSE);  
  
  beginShape();
  fill(stardo);
  noStroke();
  vertex(799, 0);
  vertex(700,200);
  vertex(50, 50);
  vertex(50, 0);
  vertex(345, 353);
  endShape(CLOSE);
  
  fill(covered);
  noStroke();
  ellipse(700, 200,150, 150);
  
  beginShape();
  fill(pirata);
  noStroke();
  vertex(width/2, height/2);
  vertex(500, 500);
  vertex(300, 500);
  endShape(CLOSE);
  
}

Bacteria[] guys;

void setup()
{
  size(500,500);
  guys = new Bacteria[12];
  for(int i=0; i<guys.length; i++){
    guys[i] = new Bacteria();
  }
}

void draw(){
  background(0);
  fill(255,221,153);
  stroke(255,247,230);
  strokeWeight(5);
  ellipse(mouseX,mouseY,30,30);
  noStroke();
  
  for(int i=0; i<guys.length; i++){
    guys[i].move();
    guys[i].show();
  }
}

class Bacteria
{
  int myX, myY;
  
  Bacteria(){
    myX = myY = 250;
  }
  
  void show(){
    fill(255,204,230);
beginShape();
    vertex(myX,myY-20);
    vertex(myX-7,myY-7);
    vertex(myX-20, myY);
    vertex(myX, myY);
    vertex(myX+7, myY-7);
    endShape(CLOSE);
    
fill(128,212,255);
beginShape();
    vertex(myX, myY);
    vertex(myX-20, myY);
    vertex(myX-7, myY+7);
    vertex(myX, myY+20);
    vertex(myX+7, myY+7);
    vertex(myX+20, myY);
    vertex(myX+7, myY-7);
    endShape(CLOSE);
  }
  
  void move(){
    if (mouseX-50 > myX){
      myX += (int)(Math.random()*7-1);
    } else if (mouseX+50 < myX){
      myX += (int)(Math.random()*7-5);
    } else {
      myX += (int)(Math.random()*7-3);
    }
    
    if (mouseY-50 > myY){
      myY += (int)(Math.random()*7-1);
    } else if (mouseY+50 < myY){
      myY += (int)(Math.random()*7-5);
    } else {
      myY += (int)(Math.random()*7-3);
    }
  }
  
}

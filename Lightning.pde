int startX =150;
int startY= 0;
int endX =150;
int endY=0;
void setup()
{
  size(300, 350);
  background (0, 0, 0);
  strokeWeight(3);
}
void draw()
{  

  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (endY<330) {
    endX= startX + ((int)(Math.random()*19)-9);
    endY= startY +((int)(Math.random()*9)+1);
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed()
{
  startX=150;
  startY=0;
  endX=150;
  endY=0;
  if (mousePressed && (mouseButton== LEFT)) {
    stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  fill(251, 211, 211);
  stroke(256, 256, 256);
  rect(80, 320, 100, 200);
  fill(211, 211, 211);
  ellipse(200, 330, 60, 60);
  
  rect(200,225,100,50);
  stroke(255,255,255);
  beginShape();
vertex(210,270);
vertex(210,290);
vertex(200,270);
endShape();

textAlign(CENTER);
textSize(9);
fill(0,0,0);
text("Ouch",230,250);
}

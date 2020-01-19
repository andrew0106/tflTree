/*
  TFLtree
  Chia Yang Chang (Andrew)
  2019
*/
/*
  Im using the fractual to create different ways of the ellipse,
  you can see that actually Im just using few lines of the code
  I tried to create something more difficult but I failed 
  So why not just using simple way to create way to create some fun stuff
  
  In this project Im using the image of the the TFL underground logo which
  I think it might be fun and prsent the London.
  
*/
float t =0;
float q =0;

void setup(){
  size(600,600);
  smooth(2);
  rectMode(CENTER);


}

void draw(){
  //saveFrame("TFLtree_####.png");
  background(255);
  translate(width/2,height/2);
  
  float c=sin(radians(t));   // create different val of the sin/cos to let it move
  float p=cos(radians(q));
  float a =map(c,0,1,0,PI);  // map the sin val into the angle
  float b =map(p,-1,1,5,25); // map the cos val into the rad
  float s =map(p,-1,1,0,5);  // map the cos val into the strokeWeight
  rotate(-a);   // make the first of the circle not move
  drawThing(0,0,b,a,s);
  
   t+=0.005;   // animation part
   q+=1;

}

void drawThing(float x, float y,float rad,float ang,float s){
  
  // 1.stop 
  
  if(rad<3) return;
  
  // 2.draw
  
  noFill();
  stroke(219,36,28);
  strokeWeight(s);  
  rotate(ang);
  ellipse(x,y,rad,rad);
  fill(3,25,170);
  noStroke();
  rect(x,y,rad*1.4,rad/4);
  
  // 3.again
  
  drawThing(rad*18,rad,rad*0.999,ang,s);

}

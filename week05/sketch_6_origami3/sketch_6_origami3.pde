ArrayList<PVector>pt;
void setup(){
  size(400,400,P3D);
  pt=new ArrayList<PVector>();
}
void draw(){
  background(#FFFFF2);
  pushMatrix();
    if(mousePressed&&mouseButton==RIGHT){
      translate(200,200);
      rotateY(radians(frameCount));
      translate(-200,-200);
    }
    for(PVector p:pt){
      ellipse(p.x,p.y,10,10);
    }
    beginShape();
    for(PVector p:pt){
      vertex(p.x,p.y);
    }
    endShape();
  popMatrix();
}
void mousePressed(){
  if(mouseButton==LEFT){
    pt.add(new PVector(mouseX,mouseY));
  }
}

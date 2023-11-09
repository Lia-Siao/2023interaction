PImage img;
int [][]pos = {{83,456},{116,457},{151,457},{185,457},{221,457},{256,456},{287,456},{321,457},{357,457},{391,456},{94,490},{128,491},{161,490},{196,491},{229,491},{263,491},{297,491},{332,491},{366,491},{109,524},{144,525},{178,525},{213,524},{246,524},{281,524},{315,524}};
void setup(){
  size(800, 600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);
}
void draw(){
  background(#FFFFF2);
  image(img, 0, 600-266);
  fill(255, 0, 0, 128);
  rect(mouseX, mouseY, 28, 30, 5);
  fill(0, 255, 0, 128);
  for (int i=0; i<26; i++){
    rect(pos[i][0], pos[i][1], 28, 30, 5);
  }
}
void mousePressed(){
  println(mouseX, mouseY);
}

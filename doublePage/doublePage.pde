static final int MAX = 2, GAP = 50, DIM = 120, RAD = DIM >> 1;
int page, cx, cy;
 
Button back, next;
 
void setup() {
  size(600, 400);
 
  noLoop();
  smooth();
 
  rectMode(CORNER);
  ellipseMode(CENTER);
  textAlign(CENTER, CENTER);
 
  stroke(0);
  strokeWeight(1.5);
 
  cx = width  >> 1;
  cy = height >> 1;
 
  back = new Button("BACK", GAP, height - Button.H - GAP);
  next = new Button("NEXT", width - Button.W - GAP, height - Button.H - GAP);
}
 
void draw() {
  background(0300);
 
  textSize(0100);
  fill(Button.black);
  text("Page #" + page, cx, cy);
 
  textSize(Button.TXTSZ);
  if (page > 0)    back.display();
  if (page < MAX)  next.display();
 
  //method("page" + page); // Works on Java Mode only!
  pageSelector();        // Workaround for PJS. But works on Java Mode as well!
}
 
void page0() {
  textAlign(CENTER, CENTER);
  text("Welcome to Chik's Chicks",10,30);
  
}
 
void page1() {
  fill(#FFFF00);
  ellipse(cx, GAP*2, DIM, DIM);
}
 
void page2() {
  fill(#FFFF00);
  rect(cx - RAD, GAP*2 - RAD, DIM, DIM);
}

void page3(){
  fill(#FFFF00);
  triangle(cx, GAP*2 - RAD, cx - RAD, GAP*2 + RAD, cx + RAD, GAP*2 + RAD);
}

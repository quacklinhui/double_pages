static final int MAX = 2, GAP = 50, DIM = 120, RAD = DIM >> 1;
int page, cx, cy;
PFont displayfont;
PFont displayfont2;
Button back, next;
 
void setup() {
  size(600, 400);
  displayfont = createFont("digital-7.ttf", 100);
  displayfont2 = createFont("digital-7.ttf", 30);
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
  background(0);
  
  fill(Button.red);
  textFont(displayfont);
  text("Page #" + page, cx, cy);
 
  textSize(Button.TXTSZ);
  if (page > 0)    back.display();
  if (page < MAX)  next.display();
 
  //method("page" + page); // Works on Java Mode only!
  pageSelector();        
}
 
void page0() {
  fill(Button.red);
  textFont(displayfont2);
  text("Welcome to Chik's Chicks",170,30);
  
}
 
void page1() {
  fill(Button.red);
  ellipse(cx, GAP*2, DIM+2, DIM+2);
  fill(Button.black);
  ellipse(cx, GAP*2, DIM, DIM);
}
 
void page2() {
  fill(Button.red);
  rect(cx - RAD-2, GAP*2 - RAD-2, DIM+4, DIM+4);
  fill(Button.black);
  rect(cx - RAD, GAP*2 - RAD, DIM, DIM);
}

void page3(){
  fill(#101010);
  triangle(cx, GAP*2 - RAD, cx - RAD, GAP*2 + RAD, cx + RAD, GAP*2 + RAD);
}

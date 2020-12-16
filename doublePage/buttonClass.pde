class Button {
  static final int W = 100, H = 100, TXTSZ = 020;
  static final color light = #B8b8b8 , red = #7B0100, black = #101010, dark = #424242;
 
  final String label;
  final int x, y, xW, yH;
 
  boolean isHovering;
 
  Button(String txt, int xx, int yy) {
    label = txt;
 
    x = xx;
    y = yy;
 
    xW = xx + W;
    yH = yy + H;
  }
    void display() {
    
    smooth();
    noStroke();
    fill(red);
    rect(x, y, W+5, H+5, 10);

    fill(isHovering? dark : black);
    rect(x, y, W, H);
    fill(red);
    text(label, x + W/2, y + H/2);
  }
 

 
  boolean isInside() {
    return isHovering = mouseX > x & mouseX < xW & mouseY > y & mouseY < yH;
  }
}

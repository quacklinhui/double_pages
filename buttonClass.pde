class Button {
  static final int W = 60, H = 40, TXTSZ = 020;
  static final color darkCyan = #00A0A0, cyan = #00FFFF, black = 0;
 
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
    fill(isHovering? cyan : darkCyan);
    rect(x, y, W, H);
    fill(black);
    text(label, x + W/2, y + H/2);
  }
 

 
  boolean isInside() {
    return isHovering = mouseX > x & mouseX < xW & mouseY > y & mouseY < yH;
  }
}

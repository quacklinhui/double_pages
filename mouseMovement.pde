void mousePressed() {
  if      (page > 0   && back.isHovering)  --page;
  else if (page < MAX && next.isHovering)  ++page;
 
  redraw();
}
 
void mouseMoved() {
  back.isInside();
  next.isInside();
 
  redraw();
}

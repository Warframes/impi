void cuadrados1() {
  for (int c=200; c>0; c-=20) {
    stroke(ls);
    fill(255, c-50, c-50);
    rect(x0, y0, c, c);
    
    for (int cx=100; cx>0; cx-=20) {
      fill(255/cx, cx+100, cx+100);
      rect(x0, y0, cx, cx);
      if (cx==20) {
        rect(500, 100, 1, 1);
      }
    }
  }
}

void cuadrados2() {

  for (int c=200; c>0; c-=20) {
    stroke(ls1);
    fill(252, c-50, c-25);
    rect(x0, y1, c, c);
    for (int cx=100; cx>0; cx-=20) {
      fill(175, c+155, c+25);
      rect(x0, y1, cx, cx);
      if (cx==20) {
        rect(500, 300, 1, 1);
      }
    }
  }
}

void cuadrados3() {
  for (int c=200; c>0; c-=20) {
    stroke(ls);
    fill(255, c+50, 2/c+50);
    rect(x1, y0, c, c);
    for (int cx=100; cx>0; cx-=20) {
      fill(225, c+125, c+180);
      rect(x1, y0, cx, cx);
      if (cx==20) {
        rect(700, 100, 1, 1);
      }
    }
  }
}

void cuadrados4() {
  for (int c=200; c>0; c-=20) {
    stroke(ls1);
    fill(255, c-20, c-200);
    rect(x1, y1, c, c);
    for (int cx=100; cx>0; cx-=20) {
      fill(c+155, c+125, c+155);
      rect(x1, y1, cx, cx);
      if (cx==20) {
        rect(700, 300, 1, 1);
      }
    }
  }
}

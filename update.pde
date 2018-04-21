/*
* Deze methode controlleerd of de muisklik binnen een bepaalde rechthoek was
 */
boolean update(float x, float y, float u, float v) {
  if (mousePressed && mouseX > x && mouseY > y && mouseX < x + u && mouseY < y + v) {
    return true;
  } else {
    return false;
  }
}

/*
* Deze methode controlleerd of de muispositie binnen een bepaalde rechthoek is
 */
boolean hover(float x, float y, float u, float v) {
  if (mouseX > x && mouseY > y && mouseX < x + u && mouseY < y + v) {
    return true;
  } else {
    return false;
  }
}

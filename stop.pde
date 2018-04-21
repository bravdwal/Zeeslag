void stopknop(int pagina) {
  println(mouseX);
  println(mouseY);
  //variabelen declareren
  float u = 500;
  float v = 300;
  float x = width/2 - u/2;
  float y = height/2 - v/2;
  float a = 50, b = 150; //resp. extra waarde bij x- en y- coördinaat voor ja-knop
  float c = 150, d = 100; //resp. breedte en hoogte van ja-knop
  
  //omkadering van warning
  stroke(0);
  fill(255);
  rect(x, y, u, v);
  
  //warning tekst
  stroke(0);
  fill(255,0,0);
  textSize(24);
  text("Ben je zeker dat je Zeeslag wilt afsluiten?", x+250, y+100);
  
  //warning > ja
  fill(255,0,0);
  stroke(0);
  rect(x+a, y+b, c, d);
  
  fill(255);
  textSize(50);
  text("Ja", x+125, y+215);
  
  //warning > nee
  fill(255,0,0);
  stroke(0);
  rect(x+u-a-c, y+b, c, d);
  
  fill(255);
  textSize(50);
  text("Nee", x+u-125, y+215);
  
  //knoppen worden ingedrukt
  if(update(x+a, y+b, c, d)) {
    exit();
    delay(200);
  } else if(update(x+u-a-c, y+b, c, d)) {
    delay(200);
    screenPage = pagina;
  }
}

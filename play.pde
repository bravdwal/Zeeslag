void play() {
  //variabelen declareren
  float u = 600;
  float v = 200;
  float x = width/2 - u/2;
  float y = height/2 - v/2;
  
  //achtergrond instellen
  image(backGround, 0, 0, width, height);
  
  //buttons
  stroke(100); 
  fill(100, 100, 100, 100);
  rect(x, y-250, u, v); //classic
  rect(x, y+250, u, v); //spelvariant
  
  //tekst buttons
  fill(255);
  textSize(100);
  textAlign(CENTER);
  text("Classic", width/2, height/2 - 214); 
  text("Spelvariant", width/2, height/2 + 286);
  
  //terugknop
  stroke(255);
  fill(255, 255, 255, 255);
  rect(100, height-80, 100, 20);
  triangle(90, height-70, 120, height-100, 120, height-40);
  
  stroke(100); 
  fill(100, 100, 100, 100);
  rect(85, height-105, 120, 70);
  
  //stopknop
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("STOP", 270, height-55);

  stroke(100); 
  fill(100, 100, 100, 100);
  rect(215, height-105, 110, 70);
  
  //knoppen worden ingedrukt
  if(update(85, height-105, 120, 70)) {
    delay(200);
    screenPage = 0; //de terugknop verwijst naar de homepage
  } else if (update(x, y-250, u, v)) {
    delay(200);
    screenPage = 4;
  } else if (update(x, y+250, u, v)) {
    delay(200);
    screenPage = 5;
  } else if (update(215, height-105, 110, 70)) {
    laatstePagina = screenPage;
    screenPage = 6;
  }
}

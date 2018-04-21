void homePage() {
  //variabelen declareren
  float u = 700;
  float v = 160;
  float x = width/2 - u/2;
  float y = height/2 - v/2;
  
  //achtergrond instellen
  image(backGround, 0, 0, width, height);
  
  //logo plaatsen boven achtergrond
  logo.resize(0, 400);
  image(logo, x-300, y-500);
  
  //plaatsen rechthoeken(buttons)
  stroke(100);
  fill(100,100,100,100);
  rect(x,y-75, u, v); //play
  rect(x,y+150, u, v); //regels
  rect(x,y+375, u, v); //quit
  
  //invullen buttons met tekst
  fill(255);
  textSize(80);
  textAlign(CENTER);
  text("Play", width/2, height/2 - 40);
  text("Regels", width/2, height/2 + 185);
  text("Quit", width/2, height/2 + 410);
  
  //knoppen worden ingedrukt
  if(update(x, y-75, u, v)) {
    delay(200);
    screenPage = 1;
  } else if(update(x,y+150,u,v)) {
    delay(200);
    screenPage = 2;
  } else if(update(x, y+375, u, v)) {
    screenPage = 3;
  }
}

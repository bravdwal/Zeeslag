void regels() {
  //achtergrond instellen
  imageMode(CORNER);
  image(backGround, 0, 0, width, height);
  
  //omkadering van tekst
  stroke(100); 
  fill(100, 100, 100, 100);
  rect(40, 50, 350, 130);
  rect(40, 200, 140, 65);
  rect(40, 455, 520, 65);
  rect(40, 275, width-80, 140);
  rect(40, 530, width-80, 175);
  
  //tekst
  fill(255);
  textSize(100);
  textAlign(LEFT);
  text("Regels", 50, 150); 
  
  textSize(50);
  textAlign(LEFT);
  text("Doel", 50, 250);
  text("Verloop van het spel", 50, 505);
  
  textSize(25);
  textAlign(LEFT);
  text("Het doel van het spel is om alle vijandelijke schepen te vernietigen met bommen." , 50, 300);
  text("Elke speler laat om de beurt een bom op een coördinaat vallen." ,50 ,335);
  text("De bedoeling van het spel is om alle vijandelijke schepen te laten zinken.", 50, 370);
  text("De eerste persoon die alle vijandelijke schepen heeft laten zinken, wint het spel." ,50 ,405);
  text("Je kiest waar jouw boten op het spelbord worden gepositioneerd." ,50, 555);
  text("Leg alle vijf de boten op het spelbord." ,50, 590);
  text("De verschillende boten mogen niet tegen elkaar liggen." ,50, 625);
  text("Eens de boten gepositioneerd zijn kan het spel beginnen." ,50, 660);
  text("Op die coördinaat zal er een bom vallen." ,50, 695);
  
  //knoppen die naar regels2() verwijzen
  fill(100, 100, 100, 100);
  rect(width/2-75, 900, 50, 50);
  
  fill(255);
  stroke(255);
  triangle(width/2-65, 915, width/2-65, 935, width/2-35 , 925);
  
  //terugknop
  stroke(255);
  fill(255, 255, 255, 255);
  rect(100, height-80, 100, 20);
  triangle(90, height-70, 120, height-100, 120, height-40);

  stroke(100); 
  fill(100, 100, 100, 100);
  rect(85, height-105, 120, 70); //dit is de stopknop zelf

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
  }  else if (update(215, height-105, 110, 70)) {
    laatstePagina = screenPage;
    screenPage = 6;
  } else if (update(width/2-75, 900, 50, 50)) {
    screenPage = 8;
  }
}

void regels2() {
  //instellen van achtergrond
  imageMode(CORNER);
  image(backGround, 0, 0, width, height);
  
  stroke(100); 
  fill(100, 100, 100, 100);
  rect(40, 50, 500, 130);
  rect(40, 200, width-80, 190);
  rect(40, 400, width-80, 330);
 
  
  fill(255);
  textSize(75);
  textAlign(LEFT);
  text("Spelvarianten", 50, 150); 
  
  textSize(50);
  textAlign(LEFT);
  text("Classic", 50, 250);
  text("Spelvariant", 50, 450);
  
  
  textSize(25);
  textAlign(LEFT);
  text("Bij 'Classic' gelden de klassieke regels: de speler plaatst vijf boten op een veld van 10x10 en speelt tegen de computer." , 50, 300);
  text("Om beurten wordt er een bom gevuurd op het veld van de tegenstander." , 50, 335);
  text("Degene die erin slaagt om de alle boten van de tegenstander te raken, wint het spel." , 50, 370);
  
  text("Deze spelvorm beschikt over nieuwe regels:" ,50 ,500);
  text("Het veld van de speler en van de computer wordt een 20 x 20 veld.", 85, 535);
  text("De boten mogen tegen elkaar geplaatst worden in het begin van het spel.", 85, 570);
  text("Er wordt een timer ingevoerd in het spel, als de speler niet snel genoeg een bom vuurt.", 85, 605);
  text("Indien de speler niet snel genoeg vuurt en de tijdslimiet verstreken is, wordt de beurt van de speler overgeslagen.",85, 640);
  text("Er wordt een shop ingevoerd in het spel. Hierin kan je speciale bommen kopen om de computer te verslaan.", 85, 675);
  text("Ben je slim genoeg om de computer te verslaan?",85, 710);

  //knoppen die naar regels() verwijzen
  fill(100, 100, 100, 100);
  rect(width/2-75, 900, 50, 50);
  
  fill(255);
  stroke(255);
  triangle(width/2-65, 925, width/2-35, 915, width/2-35, 935);

  //terugknop
  stroke(255);
  fill(255, 255, 255, 255);
  rect(100, height-80, 100, 20);
  triangle(90, height-70, 120, height-100, 120, height-40);

  stroke(100); 
  fill(100, 100, 100, 100);
  rect(85, height-105, 120, 70); //dit is de knop zelf

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
  } else if (update(215, height-105, 110, 70)) {
    laatstePagina = screenPage;
    screenPage = 6;
  } else if (update(width/2-75, 900, 50, 50)) {
    screenPage = 7;
  }
}

//int w = 60; //breedte bootblok en bordPhok -> altijd dezelfde, vandaar hier gedeclareerd
//int h = 60; //hoogte bootblok en bordPhok -> altijd dezelfde, vandaar hier gedeclareerd

//boolean magBordMaken = true; //het bordP mag maar 1 keer gemaakt worden

int posBoot5X = 10, posBoot5Y = 10;
int screenPage = 0;
PImage logo;
PImage backGround;
boolean classicAlGespeeld = false; //zie lijn 36-42: zorgt ervoor dat de classic maar 1 keer opnieuw wordt gemaakt
boolean spelvariantAlGespeeld = false; //zie lijn 44-50: zorgt ervoor dat de classic maar 1 keer opnieuw wordt gemaakt
int laatstePagina = 0;
PFont f;

Classic classic;
Spelvariant spelvariant;

void setup() {
  fullScreen();
  f = createFont("Arial", 16, true);

  logo = loadImage("img/logo.PNG");
  backGround = loadImage("img/achtergrond.jpg");
}

void draw() {
  background(0);

  if (screenPage == 0) {
    homePage();
  } else if (screenPage == 1) {
    play();
  } else if (screenPage == 2) {
    regels();
  } else if (screenPage == 3) {
    quit();
  } else if (screenPage == 4) {
    if (!classicAlGespeeld) {
      classic = new Classic();
      classicAlGespeeld = true;
    }
    if (classicAlGespeeld) {
      classic.act();
    }
  } else if (screenPage == 5) {
    if (!spelvariantAlGespeeld) {
      spelvariant = new Spelvariant();
      spelvariantAlGespeeld = true;
    }
    if (spelvariantAlGespeeld) {
      spelvariant.act();
    }
  } else if (screenPage == 6) {
    stopknop(laatstePagina);
  } else if (screenPage == 7) {
    regels();
  } else if (screenPage == 8) {
    regels2();
  }
}

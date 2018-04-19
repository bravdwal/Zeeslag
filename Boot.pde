public class Boot {
  private int posX, posY, lengte, nummer, w, h;
  private boolean actief, direction, geplaatst, allowedDraw, wasPressedInBord;


  Boot(int x, int y, int _lengte, boolean dir, int num, int _w, int _h) { //bij het maken van boot moeten de coordinaten van linkerbovenhoek ingegeven worden, het aantal 'bootblokjes' en de richting (true = horizontaal; false = verticaal); laatste vier parameters zijn voor de informatie van het bordP te ontvangen, zie methode checkTransparent
    posX = x;
    posY = y;
    lengte = _lengte;
    actief = false;
    direction = dir; //true = horizontaal; false = verticaal
    geplaatst = false;
    nummer = num;
    allowedDraw = true;
    wasPressedInBord = false;
    w = _w;
    h = _h;
  }

  /*
  *  De boot wordt getekend
   */
  private void drawBoot() {
    if (!geplaatst) {
      if (allowedDraw) {
        if (direction) { //direction is horizontal
          for (int i = 0; i < lengte; i++) {

            fill(120);
            stroke(255);
            rect(posX + i*w, posY, w, h);
          }
        } else { //direction is vertical
          for (int i = 0; i < lengte; i++) {

            fill(120);
            stroke(255);
            rect(posX, posY + i * h, w, h);
          }
        }
      }
    }
  }

  /*
  *  methode om de boot te laten bewegen volgens positie van de muis
   */
  private void moveBoot() {
    posX = mouseX;
    posY = mouseY;
    drawBoot();
  }

  /*
  *  de boot beweegt pas nadat op de boot is geklikt
   */
  private void checkMoveBoot() { 
    if (direction) { //als de boot horizontaal staat moet de update in de horizontale richting worden uitgevoerd
      if (update(posX, posY, lengte * w, h) && !actief) {
        actief = true;
      } else if (!update(posX, posY, lengte * w, h) && actief) {
        moveBoot();
      }
    } else { //als de boot verticaal staat moet de update in de verticale richting worden uitgevoerd
      if (update(posX, posY, w, lengte * h) && !actief) {
        actief = true;
      } else if (!update(posX, posY, w, lengte * h) && actief) {
        moveBoot();
      }
    }
  }

  private void changeDirection() {
    if (actief) { //de boot mag enkel van richting kunnen veranderen als ze actief is (als erop geklikt is)
      if (keyPressed) {
        if (key == ' ') {
          delay(75);
          direction = !direction;
        }
      }
    }
  }
}

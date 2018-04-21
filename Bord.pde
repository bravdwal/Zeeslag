//OPMERKING: het gedrag van bordP wordt volledig bepaald in het corresponderende spel-klasse
public class Bord {
  private int posX, posY, rows, cols, w, h;
  private Hokje[][] coord;
  private boolean magBordMaken;
  
  /*------------Deze variabelen worden enkel gebruikt voor bordC------------*/
  private boolean botenGezet; //om ervoor te zorgen dat de setC() maar 1 keer gebeurt

  public Bord(int X, int Y, int r, int c, int _w, int _h) { //param: x-coordinate, y-coordinate, amount of rows, amount of collums
    posX = X;
    posY = Y;
    rows = r;
    cols = c;
    w = _w;
    h = _h;
    coord = new Hokje[rows][cols];
    magBordMaken = true;
    botenGezet = false;
    
    //het bordP mag maar 1 keer gemaakt worden, anders gaat elke draw het bordP opnieuw gemaakt worden en zo gaat alle informatie verloren
    if (magBordMaken) {
      createBord();
      magBordMaken = false;
    }
  }

  /*
  *  tekent het bordP op gegeven positie met gegeven rows, cols
   */
  private void createBord() {
    //println("createBord()"); //dit is om te testen of het bordP effectief maar 1 keer gemaakt wordt
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        coord[i][j] = new Hokje(posX + j * w, posY + i * h, w, h, 0);
      }
    }
  }

  /*
  * tekent het bordP, let op dat dit goed gepositioneerd staat in act() zodat alles correct wordt getekend (zoals met setBoten())
   */
  private void drawBord() {    
    //botenDefinitief();
    
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        coord[i][j].create();
      }
    }
  }
}

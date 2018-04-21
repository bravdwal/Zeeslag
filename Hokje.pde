/* EXTRA INFO
*  type 0: leeg vakje
*  type 1: vakje waarop boot speler staat
*  type 2: vakjes rechtstreeks naast de boten, daar mag bij classic geen andere boot op komen
*  type 3: vakje waar boot computer staat (mag natuurlijk niet gezien worden, vandaar zelfde kleur als leeg vakje)
*  type 4: vakjes rechtstreeks naast de boten, daar mag bij classic geen andere boot op komen
*  type 5: vakje geraakt
*  type 6: vakje gemist
*/

public class Hokje {
  private int posX, posY, w, h, type;

  public Hokje(int X, int Y, int W, int H, int Type) { //param: x-coordinate, y-coordinate, width of one box, height of one box
    posX = X;
    posY = Y;
    w = W;
    h = H;
    type = Type;
  }

  private void create() {
    fill(checkRed(), checkGreen(), checkBlue());
    stroke(0, 255, 0);
    rect(posX, posY, w, h);
  }
  
  private int checkRed() {
    if (type == 0) { //leeg vakje
      return 255;
    } else if (type == 1) { //vakje waarop boot speler staat
      return 0;
    } else if (type == 2) { //vakjes rechtstreeks naast de boten, daar mag bij classic geen andere boot op komen
      return 247;
    } else if (type == 3) { //vakje waar boot computer staat (mag natuurlijk niet gezien worden, vandaar zelfde kleur als leeg vakje)
      return 0;//TODO: dit moet aangepast worden als de testfase klaar is
    } else if (type == 4) {
      return 247;//todo: dit moet aangepast worden als de testfase klaar is
    } else if (type == 5) {
      return 47;
    } else if (type == 6) {
      return 48;
    }

    return 255;
    
    //OPM: de hover krijgt geen type... er wordt een rect over getekend
  }

  private int checkGreen() {
    if (type == 0) { //leeg vakje
      return 255;
    } else if (type == 1) { //vakje waarop boot speler staat
      return 0;
    } else if (type == 2) { //vakjes rechtstreeks naast de boten, daar mag bij classic geen andere boot op komen
      return 146;
    } else if (type == 3) { //vakje waar boot computer staat (mag natuurlijk niet gezien worden, vandaar zelfde kleur als leeg vakje)
      return 255;
    } else if (type == 4) {
      return 146;//todo: dit moet aangepast worden als de testfase klaar is
    } else if (type == 5) {
      return 198;
    } else if (type == 6) {
      return 88;
    }

    return 255;
    
    //OPM: de hover krijgt geen type... er wordt een rect over getekend
  }

  private int checkBlue() {
    if (type == 0) { //leeg vakje
      return 255;
    } else if (type == 1) { //vakje waarop boot speler staat
      return 0;
    } else if (type == 2) { //vakjes rechtstreeks naast de boten, daar mag bij classic geen andere boot op komen
      return 146;
    } else if (type == 3) { //vakje waar boot computer staat (mag natuurlijk niet gezien worden, vandaar zelfde kleur als leeg vakje)
      return 255;
    } else if (type == 4) {
      return 146;//todo: dit moet aangepast worden als de testfase klaar is
    } else if (type == 5) {
      return 67;
    } else if (type == 6) {
      return 153;
    }

    return 255;
    
    //OPM: de hover krijgt geen type... er wordt een rect over getekend
  }
}

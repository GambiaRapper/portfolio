class Inssa {
  
 float xpos, ypos;
  float xfspeed=1 ;
  float yfspeed=1;
  float acc = 5;  
  float direct;
  float d;
  boolean kill=false;
  float fadeOut = 0;

  Inssa() {
  }


  Inssa(float _xpos, float _ypos, float _direct, float _d) {
    xpos=_xpos;
    ypos=_ypos;
    direct=_direct;
    d=_d;
  }

  void display() {
    if (kill==true) { 
      rect(100, 100, 100, 255);
    } else {

      if (frameCount%direct<=direct/2) { 
        if (frameCount%direct<=direct/4) {
          if (frameCount%30<=15) {
            image(inssaImage1, xpos, ypos, 100, 100);
          } else {
            image(inssaImage0, xpos, ypos, 100, 100);
          }
        } else { 
          if (frameCount%30<=15) {
            image(inssaImage2, xpos, ypos, 100, 100);
          } else {
            image(inssaImage3, xpos, ypos, 100, 100);
          }
        }
      } else {
        image(inssaImage0, xpos, ypos, 100, 100);
      }
    }
  }
  void move() {



    if (frameCount%direct<direct/2) { 

      if (frameCount%direct<direct/4) {
        xpos = xpos + (d)*xfspeed;
      } else {
        xpos = xpos - (d)*xfspeed;
      }
    } else {
      xpos=xpos+0;
    }

    //if (frameCount%direct<direct/2) {

    //  if (frameCount%direct<direct/4) {
    //    ypos = ypos + yspeed;
    //  } else {
    //    ypos = ypos - yspeed;
    //  }
    //} else {
    //  ypos=ypos+0;
    //}
  }

  int die() {
    if ((pX-xpos<120&&pX-xpos>-120)&&(pY-ypos<120&& pY-ypos>-120)&&(kick==0||kick==1)) {
      kill=true;
    }
    if ((pX-xpos<80&&pX-xpos>-80)&&(pY-ypos<80&& pY-ypos>-80)) {
      die=1; 
      xspeed=0;
      yspeed=0;
      fadeOut=fadeOut+5; 
      fill(0, 0, 0, fadeOut); 
      rect(0, 0, 1000, 600);
    }
      if (fadeOut>255){stage=4; fadeOut=0;}
   return die;

  }
}
  

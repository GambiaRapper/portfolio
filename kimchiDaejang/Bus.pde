class Bus {

  float xpos=-500;
  float ypos=250;
  float xspeed=10;
  float slow = 10;
  float busBreak;
  float fadeOut = 0;

  void display() {
    image(busImage, xpos, ypos, 580, 300);
  }
  void move() { 
    if (pY<400) {
      xpos=xpos+xspeed;
      if (xspeed<0) {
        xspeed=0;
      } else if (pX-xpos<=200 && pY-ypos<250) {

        xspeed=xspeed-slow;
      } else if (pX-xpos<=700 &&pY-ypos<250 ) {
        xspeed=xspeed-slow; 
        if (xspeed==0) {
          xspeed=0;
        }
      } else {
        xspeed=100;
      }
    }
  }
  float fadeout() {

    if (pX-xpos<300) {
      fadeOut=fadeOut+5; 
      fill(0, 0, 0, fadeOut*2); 
      rect(0, 0, 1000, 600);
      death = 1;
      xspeed= 0;
      yspeed= 0;

      if (fadeOut>200) {
        stage=20; fadeOut=0; xpos=-500; xspeed=10;
      }
    }
   
    
    return death;
  }
}

class Woogie {

  int threshold = 160;
  PImage santa;
  PImage boogie1;
  PImage boogie2;
  PImage cutesanta;
  
  int garo = 900;
  int sero = 580;
  int sx = 280;
  int sy = 490;

  Woogie () {
    boogie1 = loadImage("boogie1.png");
    boogie2 = loadImage("boogie2.png");
    santa = loadImage("santa.png") ;
    cutesanta = loadImage("cutesanta.png");
    
  }
  
  void badsanta() {
    imageMode(CENTER);
    image(cutesanta, 450, 200, 100, 120);
  }
  void badguy() {
    imageMode(CENTER);
    image(boogie1, 1350, 200, 100, 120);
  }
  void santa() {
      imageMode(CENTER);
      image(santa, garo, sero, sx, sy);
    
  }
  
    void santachange(int q) {
      imageMode(CENTER);
      tint(255, q);
      image(santa, garo, sero, sx, sy);
    }
      
      
    void woogiechange(int r){
      tint(255, r);
      image(boogie1, garo, sero, sx, sy);
  }

  

  
  void movesanta(int x) {
      imageMode(CENTER);
      image(santa, garo, sero, sx, sy);
  }
  
  void boogie(int x, int y) {
      imageMode(CENTER);
      image(boogie1, x, y, sx, sy);
    
  }
  
  void boogie1(float y) {
      imageMode(CENTER);
      image(boogie1, garo, sero, sx/y, sy/y);
  }
  
  void santa1(float y) {
      imageMode(CENTER);
      image(santa, garo, sero, sx/y, sy/y);
  }
  void boogie2(float y) {
      imageMode(CENTER);
      image(boogie2, garo, sero, sx/y, sy/y);
  }
  
  void boogietint (int a, float b) {
    imageMode(CENTER);
    tint(255, a);
    image(boogie2, garo, sero, sx/b, sy/b);
    
  }
  
}

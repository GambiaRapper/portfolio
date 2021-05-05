class Anim {
PImage[] hand = new PImage[4];
PImage ladderB;
int current = 0;
int hypos=0;

void setup() {
  size(1800, 1000);
  ladderB=loadImage("ladderB.png");
  for (int i=0; i <hand.length; i++) {

    hand[i] = loadImage("ladder_hand"+i+".png");
  }
}
void display() {
  if (frameCount % 10 == 0) {
    background(#280D06);
    image(ladderB, 505, hypos-970);
    image(ladderB, 495, hypos+980);
    image(hand[current%hand.length], 500, hypos, 800, 1000);
    current++;
    hypos=hypos+60;
    if (hypos>60) {
      hypos=-200;
    }
  }
}
}

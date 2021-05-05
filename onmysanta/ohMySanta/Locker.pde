class Locker {
  int a, b, c, d = 0;
  boolean unlocked = false;

  void mechanism() {

    if (a>9) {
      a=0;
    }
    if (b>9) {
      b=0;
    }
    if (c>9) {
      c=0;
    }
    if (d>9) {
      d=0;
    }
    if (a==1&&b==2&&c==2&&d==4) {
      unlocked=true;
    }
  }


  void display() {
    //fill(255);
    //rect(0, 0, 200, 200);
    //rect(200, 200, 200, 200);
    //fill(125,125,0);
    //rect(0,200,200,200);
    //rect(200,0,200,200);
    if (unlocked==false) {

      image(lockerImage, 600, 250, 500, 500);
    }
    if (unlocked) {
      image(unlockerImage, 600, 250, 500, 500);
    }
    stroke(5);
    fill(#4C4C4C);
    rect(1180,130,210,720);
    noStroke();
    fill(255, 0, 0);
    rect(1200, 150, 170, 170); 
    fill(#F2BA20);
    rect(1200, 320, 170, 170);
    fill(#EBF220);
    rect(1200, 490, 170, 170);
    fill(#129520);
    rect(1200, 660, 170, 170);
    fill(255);
    rect(1220, 170, 130, 130);
    rect(1220, 340, 130, 130);
    rect(1220, 510, 130, 130);
    rect(1220, 680, 130, 130);

    textAlign(CENTER, CENTER);
    textSize(96);
    fill(0);
    text(a, 1285, 225);
    text(b, 1285, 395);
    text(c, 1285, 565);
    text(d, 1285, 735);
    
    
    if (unlocked==true) {
      //rect(500,500,500,500);
   
    }
  }
}

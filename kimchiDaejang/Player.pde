class Player {
  float jump=-25;
  float accle=0;
  float gravity=1;
  boolean jumpswitch=false;

  void display() {
    if (die==1) {
      image(dieImg, pX, pY, 120, 100);
    } else
      if (kick==0) {  
        image(kickImg0, pX, pY, 100, 120);
      } else if (kick==1) {  
        image(kickImg1, pX, pY, 100, 120);
      } else {
        if (stage==31) {
          if (stage==11&&death==1) {
            image(dieImg, pX, pY, 100, 120);
          } else if (keyPressed&&key=='a'&&frameCount%16<8) {
            image(playerImg1, pX, pY, 100, 120);
          } else if (keyPressed&&key=='w'&&frameCount%16<8) {
            image(playerImg1, pX, pY, 100, 120);
          } else if (keyPressed&&key=='s'&&frameCount%16<8) {
            image(playerImg1, pX, pY, 100, 120);
          } else if (keyPressed&&key=='d'&&frameCount%16<8) {
            image(playerImg2, pX, pY, 100, 120);
          } else if (keyPressed&&key=='d'&&frameCount%16>=8) {
            image(playerImg3, pX, pY, 100, 120);
          } else if (left==0) {
            image(playerImg3, pX, pY, 100, 120);
          } else { 
            image(playerImg, pX, pY, 100, 120);
          }
        } else if (stage==11&&death==1) {
          image(dieImg, pX, pY, 100, 120);
        } else if (keyPressed&&key=='a'&&frameCount%16<8) {
          image(playerImg1, pX, pY, 100, 120);
        } else if (keyPressed&&key=='w'&&frameCount%16<8) {
          image(playerImg1, pX, pY, 100, 120);
        } else if (keyPressed&&key=='s'&&frameCount%16<8) {
          image(playerImg1, pX, pY, 100, 120);
        } else if (keyPressed&&key=='d'&&frameCount%16<8) {
          image(playerImg2, pX, pY, 100, 120);
        } else if (keyPressed&&key=='d'&&frameCount%16>=8) {
          image(playerImg3, pX, pY, 100, 120);
        } else if (left==0) {
          image(playerImg3, pX, pY, 100, 120);
        } else { 
          image(playerImg, pX, pY, 100, 120);
        }
      }
  }
  void move() {
    if(stage==5){
    if (keyPressed&key=='j') {
      jumpswitch=true;
    }
    if (jumpswitch==true
      ) {
      jump=jump+gravity;
      yspeed=yspeed+jump;
      pY=pY+yspeed;
      if (jump>=25){jump=-25;}
    }
    if (pY>=490){jumpswitch=false;}
    if (jump>=25){jump=-25;}
    if (pY>=490){pY=490;}
  
if (keyPressed&&key=='a'&&jumpswitch==true) {
        pX=pX-xspeed;
      }
      if (keyPressed&&key=='d'&&jumpswitch==true) {
        pX=pX+xspeed;
      }


}
    
    
   




    //if (pY>=490) {
    //  jump=0;
    //}








    if (keyPressed&&key=='a') {
      left=1;
    };
    if (keyPressed&&key=='d') {
      left=0;
    };

    if (keyPressed) {
      if (key=='w') {
        pY=pY-yspeed;
      }
      if (key=='s') {
        pY=pY+yspeed;
      }
      if (key=='a') {
        pX=pX-xspeed;
      }
      if (key=='d') {
        pX=pX+xspeed;
      }
    }
  
  }
  void kimchiKick() {
    if (left==1&&keyPressed&&key=='k') {
      kick=0;
    } else if (left==0&&keyPressed&&key=='k') {
      kick=1;
    } else {
      kick=2;
    }
  
  }
}

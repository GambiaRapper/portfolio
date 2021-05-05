PFont font;
int stage =  0;
int ttangA = 0;
int ttangB = 0;
int ttangC = 0;
boolean shuffle = true;
boolean run = true;
boolean sinsa = true;
int score = 0;
int bet;


void setup() {
  size(800, 500);
  font = loadFont("휴먼옛체-48.vlw");
  textFont(font, 40);
  background(#134B13);
}

void draw() {



  if (stage>99) {
    rectMode(CENTER);
    fill(#FFFED6);
    rect(400, 300, 700, 500);
    fill(#FAF562);
    rect(400, 300, 600, 400);

    fill(#FFFFFF);
    ellipse(width/2, height/2, 300, 250);
    stroke(#FFA30D);
    fill(#FFC70D);
    ellipse(width/2, height/2, 150, 150);
    fill(#FCF5DB);
    noStroke();
    ellipse(width/2-35, height/2-25, 20, 40);
    ellipse(width/2-35, height/2+25, 15, 25);

    fill(0);
    ellipse(width/2-25, height/2-20, 20, 30);
    ellipse(width/2+25, height/2-20, 20, 30);
    ellipse(width/2, height/2+30, 30, 40);
    stroke(#FFA30D);
    fill(#FFC70D);
    ellipse(width/2+50, height/2+50, 40, 50);  
    noStroke();

    fill(#818181);
    rect(120, 60, 200, 70);
    fill(#3F403F);
    rect(120, 60, 190, 60);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), 120, 70);
  }
  //if (stage<10 && second()>50) {stage = 11;}

  switch (stage) {

  case 0 : //intro
    //background(#134B13);
    score=0;
    if (mousePressed) {
      if (frameCount % 2 == 0 && mouseX<width/2+50 && mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75 ) {
        pushMatrix();
        translate(width/2, height/4);
        rectMode(CENTER);
        rotate(radians(frameCount % 360));
        fill(#C91D14);
        rect(0, 0, 100, 150);
        popMatrix();
      }
    }


    if (shuffle==true) {
      rectMode(CENTER);
      fill(#C91D14);
      rect(width/2, height/4, 100, 150);
      if (mouseX<width/2+50 && mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75 && shuffle==true) {
        fill(#FA8C88);
        rect(width/2, height/4, 100, 150);
      }
    }
    textAlign(CENTER);
    fill(255);
    textSize(48);
    text("Shuffle to start", width/2, height*3/4);


    break;


  case 1: // start

    if (stage<10 && second()>55) {
      stage = 11;
    }
    background(#134B13); 
    fill(#818181);
    rect(120, 60, 200, 70);
    fill(#3F403F);
    rect(120, 60, 190, 60);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), 120, 70);

    //card1

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height/4, 100, 150);
    if (mouseX<width/2+50 && mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75) {
      fill(#FA8C88);
      rect(width/2, height/4, 100, 150);
    }

    //    if (mousePressed) {
    //      if (frameCount % 2 == 0) {
    //        pushMatrix();
    //        translate(width/2, height/4);
    //        rectMode(CENTER);
    //        rotate(radians(frameCount % 360));
    //        fill(#C91D14);
    //        rect(0, 0, 10, 150);
    //        popMatrix();
    //      }
    //    }


    break;

  case 2: //dispensed cards
    if (stage<10 && second()>55) {
      stage = 11;
    }
    ttangA = frameCount%10;
    ttangB = second()%10;
    ttangC = mouseX%10;
    bet=bet+1;

    background(#134B13);
    rectMode(CENTER);
    fill(#818181);
    rect(120, 60, 200, 70);
    fill(#3F403F);
    rect(120, 60, 190, 60);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), 120, 70);

    //card
    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height/4, 100, 150);
    rect(width/3, height*3/4, 100, 150);
    rect(width*2/3, height*3/4, 100, 150);

    if (mouseX<width/3+50 &&mouseX>width/3-50 && mouseY>height*3/4-75 && mouseY<height*3/4+75) {
      fill(#FA8C88);
      rect(width/3, height*3/4, 100, 150);
    }

    if (mouseX<width*2/3+50 &&mouseX>width*2/3-50 && mouseY>height*3/4-75 && mouseY<height*3/4+75) {
      fill(#FA8C88);
      rect(width*2/3, height*3/4, 100, 150);
    }
    break;

  case 3: //left
    if (stage<10 && second()>55) {
      stage = 11;
    }
    background(#134B13);
    rectMode(CENTER);
    fill(#818181);
    rect(120, 60, 200, 70);
    fill(#3F403F);
    rect(120, 60, 190, 60);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), 120, 70);

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height/4, 100, 150);
    rect(width/3, height*3/4, 100, 150);
    rect(width*2/3, height*3/4, 100, 150);
    fill(#FFFFFF);
    rect(width/3, height*3/4, 90, 140);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangA, width/3, height*3/4+40);

    if (mouseX<width*2/3+50 &&mouseX>width*2/3-50 && mouseY>height*3/4-75 && mouseY<height*3/4+75) {
      fill(#FA8C88);
      rect(width*2/3, height*3/4, 100, 150);
    }

    break;

  case 4: //right
    if (stage<10 && second()>55) {
      stage = 11;
    }

    background(#134B13);
    rectMode(CENTER);
    fill(#818181);
    rect(120, 60, 200, 70);
    fill(#3F403F);
    rect(120, 60, 190, 60);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), 120, 70);

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height/4, 100, 150);
    rect(width/3, height*3/4, 100, 150);
    rect(width*2/3, height*3/4, 100, 150);
    fill(#FFFFFF);
    rect(width*2/3, height*3/4, 90, 140);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangB, width*2/3, height*3/4+40);

    if (mouseX<width/3+50 &&mouseX>width/3-50 && mouseY>height*3/4-75 && mouseY<height*3/4+75) {
      fill(#FA8C88);
      rect(width/3, height*3/4, 100, 150);
    }

    break;


  case 5: //draw both
    if (stage<10 && second()>55) {
      stage = 11;
    }

    background(#134B13);
    rectMode(CENTER);
    fill(#818181);
    rect(120, 60, 200, 70);
    fill(#3F403F);
    rect(120, 60, 190, 60);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), 120, 70);

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height/4, 100, 150);
    rect(width/3, height*3/4, 100, 150);
    rect(width*2/3, height*3/4, 100, 150);
    fill(#FFFFFF);
    rect(width*2/3, height*3/4, 90, 140);
    fill(#FFFFFF);
    rect(width/3, height*3/4, 90, 140);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangA, width/3, height*3/4+40);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangB, width*2/3, height*3/4+40);

    if (mouseX<width/2+50 && mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75) {
      fill(#FA8C88);
      rect(width/2, height/4, 100, 150);
    }
    if (sinsa!=false
    ){
    textAlign(CENTER);
    fill(255);
    textSize(40);
    text("공용 패를 드로우 하세요", width/2, height/2);}

    break;

  case 8: //common draw
    if (stage<10 && second()>55) {
      stage = 11;
    }

    background(#134B13);
    rectMode(CENTER);
    fill(#818181);
    rect(120, 60, 200, 70);
    fill(#3F403F);
    rect(120, 60, 190, 60);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), 120, 70);

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height/4, 100, 150);
    rect(width/3, height*3/4, 100, 150);
    rect(width*2/3, height*3/4, 100, 150);
    fill(#FFFFFF);
    rect(width*2/3, height*3/4, 90, 140);
    fill(#FFFFFF);
    rect(width/3, height*3/4, 90, 140);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangA, width/3, height*3/4+40);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangB, width*2/3, height*3/4+40);

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height*3/4, 100, 150);
    fill(#FFFFFF);
    rect(width/2, height*3/4, 90, 140);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangC, width/3, height*3/4+40);


    break;

  case 6: //win
    if (stage<10 && second()>55) {
      stage = 11;
    }

    background(#134B13);
    rectMode(CENTER);
    fill(#818181);
    rect(120, 60, 200, 70);
    fill(#3F403F);
    rect(120, 60, 190, 60);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), 120, 70);

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height/4, 100, 150);
    rect(width/3, height*3/4, 100, 150);
    rect(width*2/3, height*3/4, 100, 150);
    fill(#FFFFFF);
    rect(width*2/3, height*3/4, 90, 140);
    fill(#FFFFFF);
    rect(width/3, height*3/4, 90, 140);



    fill(0);
    textSize(120);
    text(ttangA, width/3, height*3/4+40);
    textAlign(CENTER);


    fill(0);
    textSize(120);
    text(ttangB, width*2/3, height*3/4+40);

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height*3/4, 100, 150);
    fill(#FFFFFF);
    rect(width/2, height*3/4, 90, 140);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangC, width/2, height*3/4+40);

    fill(255);
    textSize(40);
    text("승리!", width/3, height-15);
    text("패배!", width*2/3, height-15);

    fill(0);
    textSize(40);
    text("???:너 나중에 한판 더 해...!", width/2, height*2/5);

    //fill(255);
    //textSize(40);
    //text("이돈 우리가 먹습니다~", width/2, height*2/4); 

    break;

  case 7: //defeated
    if (stage<10 && second()>55) {
      stage = 11;
    }

    background(#134B13);
    rectMode(CENTER);
    fill(#818181);
    rect(120, 60, 200, 70);
    fill(#3F403F);
    rect(120, 60, 190, 60);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), 120, 70);

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height/4, 100, 150);
    rect(width/3, height*3/4, 100, 150);
    rect(width*2/3, height*3/4, 100, 150);
    fill(#FFFFFF);
    rect(width*2/3, height*3/4, 90, 140);
    fill(#FFFFFF);
    rect(width/3, height*3/4, 90, 140);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangA, width/3, height*3/4+40);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangB, width*2/3, height*3/4+40);

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height*3/4, 100, 150);
    fill(#FFFFFF);
    rect(width/2, height*3/4, 90, 140);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangC, width/2, height*3/4+40);

    fill(0);
    textSize(40);
    text("???:돈이라는게 독기가 세거든..!", width/2, height*2/5);

    fill(255);
    textSize(40);
    text("패배!!", width/3, height-15);
    text("승리!!", width*2/3, height-15);

    break;

  case 9: //draw
    if (stage<10 && second()>55) {
      stage = 11;
    }

    background(#134B13);
    rectMode(CENTER);
    fill(#818181);
    rect(120, 60, 200, 70);
    fill(#3F403F);
    rect(120, 60, 190, 60);
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(nf(hour(), 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2), 120, 70);

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height/4, 100, 150);
    rect(width/3, height*3/4, 100, 150);
    rect(width*2/3, height*3/4, 100, 150);
    fill(#FFFFFF);
    rect(width*2/3, height*3/4, 90, 140);
    fill(#FFFFFF);
    rect(width/3, height*3/4, 90, 140);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangA, width/3, height*3/4+40);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangB, width*2/3, height*3/4+40);

    rectMode(CENTER);
    fill(#C91D14);
    rect(width/2, height*3/4, 100, 150);
    fill(#FFFFFF);
    rect(width/2, height*3/4, 90, 140);
    textAlign(CENTER);
    fill(0);
    textSize(120);
    text(ttangC, width/2, height*3/4+40);

    fill(0);
    textSize(30);
    text("???:이돈 다 빼시겠어요, 묻고 더블로 가시겠어요?", width/2, height*2/5);

    fill(255);
    textSize(40);
    text("무승부!!", width/3, height-15);
    text("무승부!!", width*2/3, height-15);

    fill(255);
    textSize(40);
    text("묻고 더블로 가!!", width/2, height*2/4);

    if (mouseX>width/2-100&&mouseX<width/2+100&&mouseY>height/2-20&&mouseY<height/2+20) {
      fill(120);
      textSize(40);
      text("묻고 더블로 가!!", width/2, height*2/4);
    }



    break;

  case 11: //arrested
    background(frameCount*8%256, 0, 256-frameCount*8%256);
    fill(255);
    textSize(40);
    text("단속반에 붙잡혔습니다!!", width/2, height/4);

    //rectMode(CENTER);
    //fill(0);
    //rect(width/2, height*3/4, 600, 100);
    fill(255);
    textSize(40);
    text("엉엉 한번만 봐주세요", width/2, height*3/4);


    break;
  }//switch
  //alert
  if (second()>50&&second()<60) {  
    textAlign(CENTER);
    textSize(25);
    fill(255, 255, 0);
    text("*단속주의*", 120, 120);
    textSize(15);
    text("매 55~60초", 120, 140);
  }
  //agin
  if (stage!=0) {
    fill(255); 
    textSize(30);
    text("다시하기", 700, 400);
    if (mouseX>640&&mouseX<760&&mouseY>380&&mouseY<420) {
      fill(180); 
      textSize(30);
      text("다시하기", 700, 400);
    }
  }
  //sinsa
  if (sinsa==false && stage!=6 && stage!=7 && stage!=9 && stage!=11) { 
    fill(255);
    textAlign(CENTER);
    textSize(40);
    text("???:어이 젊은친구, 신사답게 행동해..!", width/2, height/2);
  }
  //score
  if (stage!=0) {
    fill(255); 
    textSize(30);
    text("점수 : "+ score, 100, 400);
    text("배팅 : "+ bet, 100, 350);
  }
}//draw

void mousePressed() { 
  if (mouseButton==LEFT)
  { 
    if (stage== 0 && mouseX<width/2+50 &&mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75 ) {
      shuffle=false; 
      rectMode(CENTER);
      fill(#C91D14);
      rect(width/2, height/4, 100, 150);
    }

    if (stage==1 && mouseX<width/2+50 &&mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75) {
      stage = 2;
    }


    if (stage==2 && mouseX<width/3+50 &&mouseX>width/3-50 && mouseY>height*3/4-75 && mouseY<height*3/4+75) {
      stage=3;
    }
    if (stage==2 && mouseX<width*2/3+50 &&mouseX>width*2/3-50 && mouseY>height*3/4-75 && mouseY<height*3/4+75) {
      stage=4;
    }
    if (stage==3 && mouseX<width*2/3+50 &&mouseX>width*2/3-50 && mouseY>height*3/4-75 && mouseY<height*3/4+75) {
      stage=5;
    }
    if (stage==4 && mouseX<width/3+50 &&mouseX>width/3-50 && mouseY>height*3/4-75 && mouseY<height*3/4+75) {
      stage=5;
    }
    if (stage==5 && mouseX<width/2+50 &&mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75
      && (ttangA+ttangC)%10>(ttangB+ttangC)%10) {
      stage=6;
    }
    if (stage==5 && mouseX<width/2+50 &&mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75
      && (ttangA+ttangC)%10<(ttangB+ttangC)%10) {
      stage=7;
    }
    if (stage==5 && mouseX<width/2+50 &&mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75
      && ttangA==ttangC&&ttangA!=ttangB) {
      stage=6;
    }
     if (stage==5 && mouseX<width/2+50 &&mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75
      && ttangB==ttangC&&ttangA!=ttangB) {
      stage=7;
    }
    if (stage==5 && mouseX<width/2+50 &&mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75
      && ttangA+ttangC==ttangB+ttangC) {
      stage=9;
    }

    if (mouseX>640&&mouseX<760&&mouseY>380&&mouseY<420) {
      if (stage==6||stage==7||stage==9||stage==11) {
        stage=1; 
        bet=0;
      } 
      if (stage==2||stage==3||stage==4||stage==5||stage==8) {
        sinsa=false;
      }
    }
    if (stage==6) {
      score=score+bet;
      bet=0;
    }
    if (stage==7) {
      score=score-bet;
      bet=0;
    }
    if (stage==9) {
      score=score;
    }
    //double
    if (stage==9&&mouseX>width/2-100&&mouseX<width/2+100&&mouseY>height/2-20&&mouseY<height/2+20) {
      stage=2;
      bet=bet*2;
    }
  //  if (stage==11&&second()<55&&mouseX>640&&mouseX<760&&mouseY>380&&mouseY<420){    score=score-1000;}
  }

  if (mouseButton==RIGHT) {
    if (run==true) {
      stage=stage*100; 
      run=!run;
    } else {
      stage=stage/100; 
      run=!run;
    }
  }  
}
void mouseReleased() {
  if (stage== 0 && mouseX<width/2+50 &&mouseX>width/2-50 && mouseY>height/4-75 && mouseY<height/4+75 ) {
    stage=1;
  }
  if (mouseX>640&&mouseX<760&&mouseY>380&&mouseY<420) {   
    if (stage==2||stage==3||stage==4||stage==5||stage==8) {
      sinsa=true;
    }
  }
}
void keyPressed() {
  background(#134B13);
  stage=0;
  shuffle=true;
}

// 


import processing.video.*;
import processing.sound.*;

SoundFile bgm;
SoundFile carols;
Anim anim;
Flash flash;
Capture cam;
Inventory inventory;
int stage=0;
boolean flashItem = false;
Locker locker;
PImage stage2image;
PImage lockerImage;
PImage unlockerImage;
PImage inventLeft;
PImage inventRight;
PImage card1;
PImage card2;
PImage card2y;
PImage card4;
//PImage card1d;
//PImage card2d;
//PImage card2yd;
//PImage card4d;
PImage cards;
PImage cardsover;
PImage fireplace;
PImage lockerbg;
PImage lockerbgover;
PImage chain;
PImage backstage;
PImage steel;
PImage steelover;
PImage ladder;
PImage ladderover;
PImage arrow;
boolean textBackgroundBoolean;
int text2_1=1;
int text2_2=1;
int text2_3=1;
int text2_4=1;
int text2_5 = 1;
int text2_6 = 1;
int text2_7 = 1;
int text2_8 = 1;
int text2_9 = 1;
int fadein2 = 255;
int fadein3 = 255;
int fadein4 = 30;
int fadein5 = 255;
int fadeinspeed = 1;

// 

PImage stageimg1, stageimg1Open, inven1, hints, hintk, hintu, hintl1, hintl2, nkey;
PImage lock_box, lock_boxover, skull, skull_over, books, xButton, restart;
PFont nanum;
bookButton bbutton1, bbutton2, bbutton3, bbutton4, bbutton5;
keyButton keybutton1;
int text, retry = 1;
int push, gbook, closebook, next = 0;
int fadeout = 255;
boolean press, pkeys, open= false;
boolean book1, book2, book3, book4, book5 = false;



// 

Woogie woogie;

PImage finalstage;
PImage first;
PImage layer;
PImage castle;
PImage doorClosed;
PImage doorOpened;
PImage doorOver;
PImage village;
PImage back;
PImage backLeft;
PImage backRight;
PImage badending;
PImage santa;
PImage boogie1;
PImage cutesanta;
PImage christmas;
PImage letter; 
int move = 900;
int vanish = 255;
float size = 0.8;
float d = dist(887, 320, mouseX, mouseY);
PFont NanumS;
int xw = 0;
int yw = 0;
int fadeinA = 255;
int fadeinB = 255;
int boogieOn = 255;
int andOn = 255;
int christ = 255;
int c1 = 255;
int c2 = 0;
int c3 = 255; 
int c4 = 0;



void setup() {
  // 
  size(1800, 1000);
  background(255);
  nanum = loadFont("NanumSquareL-48.vlw");
  stageimg1 = loadImage("stage1.jpg");
  books = loadImage("book.png");
  stageimg1Open = loadImage("stage1_open.jpg");
  PImage ibooks = loadImage("book_over.png");
  xButton = loadImage("buttonX.png");
  restart = loadImage("restart.png");
  nkey = loadImage("key.png");
  hints = loadImage("book_s.png");
  hintk = loadImage("book_k.png");
  hintu = loadImage("book_u.png");
  hintl1 = loadImage("book_l.png");
  hintl2 = loadImage("book_l2.png");
  lock_box = loadImage("lock_box.png");
  lock_boxover = loadImage("lock_boxover.png");
  skull = loadImage("skull.png");
  skull_over = loadImage("skull_over.png"); 
  bbutton1 = new bookButton(1417, 308, 19, 55, 45, 125, books, ibooks, hints, 1);
  bbutton2 = new bookButton(483, 179, 20, 58, 150, 125, books, ibooks, hintk, 2);
  bbutton3 = new bookButton(353, 440, 18, 53, 45, 245, books, ibooks, hintu, 3);
  bbutton4 = new bookButton(1207, 429, 23, 54, 150, 245, books, ibooks, hintl1, 4);
  bbutton5 = new bookButton(1291, 429, 20, 52, 45, 365, books, ibooks, hintl2, 5);
  keybutton1 = new keyButton(570, 566, 60, 60, 151, 367, nkey);


  // 
  inventory = new Inventory();
  locker=new Locker();
  cam= new Capture(this, 320, 240, "pipeline: ksvideosrc device-index=0 ! video/x-raw,width=320,height=240");
  flash= new Flash();
  flash.flashSetup();
  anim = new Anim();
  bgm = new SoundFile(this, "doll.mp3");
  bgm.loop();
  carols = new SoundFile(this, "carols.mp3");
  anim.setup();

  inventLeft = loadImage("inventLeft.png");
  inventRight = loadImage("inventRight.png");
  stage2image = loadImage("stage2image.jpg");
  lockerImage = loadImage("lockerImage.png");
  unlockerImage = loadImage("unlockerImage.png");
  lockerbg=loadImage("lockerbg.png");
  lockerbgover=loadImage("lockerbgover.png");
  steel = loadImage("steel.png");
  steelover = loadImage("steelover.png");
  fireplace = loadImage("fireplace.png");
  chain = loadImage("chain.png");
  card1= loadImage("card1.png");
  card2= loadImage("card2.png");
  card2y= loadImage("card2y.png");
  card4 = loadImage("card4.png");
  ladder = loadImage("ladder.png");
  ladderover = loadImage("ladderover.png");
  //card1d= loadImage("card1d.png");
  //card2d= loadImage("card2d.png");
  //card2yd= loadImage("card2yd.png");
  //card4d = loadImage("card4d.png");
  cards = loadImage("cards.png");
  cardsover = loadImage("cardsover.png");
  backstage = loadImage("backstage.png");
  arrow = loadImage("arrow.png");



  // 
  woogie = new Woogie();
  castle = loadImage("castle.jpg");
  finalstage = loadImage("back.jpg");
  first = loadImage("start.jpg");
  NanumS = loadFont("NanumSquareL-48.vlw");
  layer = createImage(320, 240, ARGB);

  doorClosed = loadImage("doorClosed.jpg");
  doorOpened = loadImage("doorOpened.jpg");
  doorOver = loadImage("doorOver.jpg");
  village = loadImage("village.jpg");
  back = loadImage("back.jpg");
  backLeft = loadImage("backLeft.jpg");
  backRight = loadImage("backRight.jpg");
  badending = loadImage("badending.jpg");
  boogie1 = loadImage("boogie1.png");
  santa = loadImage("santa.png") ;
  cutesanta = loadImage("cutesanta.png");
  christmas = loadImage("christmas.jpg");
  letter = loadImage("letter.png");
}

void draw() {


  textFont(NanumS, 40);
  textAlign(CENTER);
  fill(0);

  switch (stage) {

  case 0:
    background(0);
    imageMode(CENTER);
    image(first, 900, 500, 1260, 1000);



    break;
  case 1:

    //Initialize
    // GV
    text = 1;
    push= 0;
    gbook = 0;
    closebook = 0;
    retry = 0;
    next = 0;
    fadeout = 255;
    press= false;
    pkeys= false;
    open= false;
    book1 = false;
    book2 = false;
    book3 = false;
    book4 = false;
    book5 = false;

    // 
    move = 900;
    xw = 0;
    yw = 0;
    fadeinA = 255;
    fadeinB = 255;
    boogieOn = 255;
    andOn = 255;
    christ = 255;
    c1 = 255;
    c2 = 0;
    c3 = 255; 
    c4 = 0;

    // 
    fadein2 = 255;
    fadein3 = 255;
    fadein4 = 30;
    fadein5 = 255;
    text2_1 = 1;
    text2_2 = 1;
    text2_3 = 1;
    text2_4 = 1;
    text2_5 = 1;
    text2_6 = 1;
    text2_7 = 1;
    text2_8 = 1;
    locker.a = 0;
    locker.b = 0;
    locker.c = 0;
    locker.d = 0;
    locker.unlocked = false;

    ///////////////



    background(0);
    rectMode(CENTER);
    fill(0);
    stroke(255);
    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("어젯밤, 내 앞으로 의문의 편지가 도착했다. ", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 2:
    background(0);
    rectMode(CENTER);
    fill(0);
    stroke(255);
    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("편지에는 다급한 느낌으로 누군가 휘갈겨 쓴 글씨가...", 900, 780);
    text("내용은 다음과 같았다.", 900, 837);
    textSize(24);
    text("Click to continue", 1350, 870);

    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 3:
    background(0);
    rectMode(CENTER);
    fill(0);
    stroke(255);

    imageMode(CENTER);
    image(letter, 900, 350, 600, 630);

    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("뭐...뭐라고? 어떻게 이런 일이...!", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 4:
    background(0);
    imageMode(CENTER);
    image(village, 900, 500, 1260, 1000);
    rectMode(CENTER);
    fill(0);
    stroke(255);

    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("여기는 마지막으로 산타가 목격되었다는 할로윈 타운...", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 5:
    background(0);
    imageMode(CENTER);
    image(castle, 900, 500, 1260, 1000);
    rectMode(CENTER);
    fill(0);
    stroke(255);

    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("산꼭대기 위의 음험한 성에 가까이 가보자!", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 6:
    background(0);
    imageMode(CENTER);
    image(doorClosed, 900, 500, 1260, 1000);

    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("음산한 문... 한 번 들어가면 나오지 못해...!!!", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 7:
    background(0);
    imageMode(CENTER);
    image(doorClosed, 900, 500, 1260, 1000);
    rectMode(CENTER);
    fill(0);
    stroke(255);

    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("성에 들어가기 전 후레시가 제대로 작동하는지 살펴보자.", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 8:
    background(0);
    imageMode(CENTER);
    image(doorClosed, 900, 500, 1260, 1000);


    fill(255);
    text("후레쉬를 비춘 부분만 흰색이 되면 확인 완료!", 900, 180);

    if (cam.available()) { 
      cam.read();
      flip(cam);
    }
    noFill();
    stroke(255);
    strokeWeight(4);
    rect(900, 400, 600, 400);
    imageMode(CENTER);
    image(layer, 900, 400, 600, 400);
    strokeWeight(1);


    for (int x = 0; x < cam.width; x++) {
      for (int y = 0; y < cam.height; y++) {
        color pixelColor = cam.pixels[y*cam.width + x];
        //float redity = red(pixelColor) - (green(pixelColor) + blue(pixelColor))/2; //dgree of red
        float bright= brightness(pixelColor);
        if (bright > 180) {
          //penlayer.pixels[y*cam.width + x] = cam.pixels[y*cam.width + x];
          layer.pixels[y*cam.width + x] = color(bright);
        } else { 
          layer.pixels[y*cam.width + x] = color(0);
        }
      }
    }
    layer.updatePixels();


    fill(0);
    stroke(255);
    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("성에 들어가기 전 후레쉬가 제대로 작동하는지 살펴보자.", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);

    textAlign(LEFT, CORNER);
    textFont(nanum, 48);
    textSize(20);
    fill(255);
    text("후레쉬 사용법", 1540, 390);
    text("비치되어 있는 후레쉬를 쥐고", 1540, 415);
    text("뒤에 있는 버튼을 꾹 누르세요", 1540, 435);
    break;

  case 9:
    background(0);
    imageMode(CENTER);

    if ((mouseX < 1090 && mouseX > 685 && mouseY < 800 && mouseY > 320) || (d<330)) {
      image(doorOver, 900, 500, 1260, 1000);
    } else {
      image(doorClosed, 900, 500, 1260, 1000);
    }

    fill(0);
    stroke(255);

    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("이제 후레쉬를 끄고, 문을 클릭해 들어가보자...!!!", 900, 800);
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 100:
    background(0);
    imageMode(CENTER);
    image(doorOpened, 900, 500, 1260, 1000);


    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("이제부터 시작이다!", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;



  case 10 :
    imageMode(CORNERS);
    image(stageimg1, 270, 0, 1530, 1000);
    noStroke();
    rectMode(CORNERS);
    rect(0, 0, 270, 1000);
    rect(1530, 0, 1800, 1000);
    fill(0, 0, 0, fadeout);
    if (fadeout>120) {
      fadeout -= 5;
    }
    if (text == 1) {
      imageMode(CORNER);
      stage1set();
      fill(255);
      text("문을 열고 들어오니 보이는 곳은 우아하지만 음산한 서재", 900, 780);
      text("어디선가 들려오는 스산한 목소리...", 900, 837);
      textSize(24);
      text("Click to continue", 1350, 870);
    } else if (text == 2) {
      imageMode(CORNER);
      stage1set();
      rectMode(CENTER);
      rect(900, 800, 1200, 180);
      fill(255);
      text("돌아가..! 너무 늦기 전에...", 900, 800);
      textSize(24);
      text("Click to continue", 1350, 870);
    } else if (text ==3) {

      imageMode(CORNER);
      stage1set();
      rectMode(CENTER);
      rect(900, 800, 1200, 180);
      fill(255);
      text("놀랍게도 그림속의 남자가 입을 움직이며 말소리를 낸다.", 900, 800);
      textSize(24);
      text("Click to continue", 1350, 870);
    } else if (text ==4) {
      imageMode(CORNER);
      stage1set();
      rectMode(CENTER);
      rect(900, 800, 1200, 180);
      fill(255);
      text("방안의 물건을 이곳저곳 눌러서 방을 나갈 방법을 찾아보자.", 900, 800);
      textSize(24);
      text("Click to continue", 1350, 870);
    } else if (text>4) {
      imageMode(CORNERS);
      image(stageimg1, 270, 0, 1530, 1000);
      imageMode(CORNER);
      image(restart, 1580, 900, 200, 60);
      fill(0, 0, 0, fadeout);
      fadeout -= 5;
      rect(0, 0, 1800, 1000);
      bbutton1.display();
      bbutton2.display();
      bbutton3.display();
      bbutton4.display();
      bbutton5.display();
      keybutton1.display();
      if (mouseX>870&&mouseX<950&&mouseY>465&&mouseY<545) {
        image(lock_boxover, 870, 465, 80, 80);
      } else {
        image(lock_box, 870, 465, 80, 80);
      }
      if (mouseX>570&&mouseX<630&&mouseY>566&&mouseY<646) {
        image(skull_over, 570, 566, 60, 60);
      } else {
        image(skull, 570, 566, 60, 60);
      }
    }
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 11:
    imageMode(CORNERS);
    image(stageimg1, 270, 0, 1530, 1000); 
    fill(0, 0, 0, 125);
    rectMode(CORNER);
    noStroke();
    rect(0, 0, 1800, 1000);
    bbutton1.display();
    bbutton2.display();
    bbutton3.display();
    bbutton4.display();
    bbutton5.display();
    keybutton1.display();
    if (mouseX>870&&mouseX<950&&mouseY>465&&mouseY<545) {
      image(lock_boxover, 870, 465, 80, 80);
    } else {
      image(lock_box, 870, 465, 80, 80);
    }
    if (mouseX>570&&mouseX<630&&mouseY>566&&mouseY<646) {
      image(skull_over, 570, 566, 60, 60);
    } else {
      image(skull, 570, 566, 60, 60);
    }
    if (push == 1) {
      image(hints, 650, 300, 500, 300);
      image(xButton, 1085, 320, 50, 50);
    } else if (push == 2) {
      image(hintk, 650, 300, 500, 300);
      image(xButton, 1085, 320, 50, 50);
    } else if (push ==3) {
      image(hintu, 650, 300, 500, 300);
      image(xButton, 1085, 320, 50, 50);
    } else if (push == 4) {
      image(hintl1, 650, 300, 500, 300);
      image(xButton, 1085, 320, 50, 50);
    } else if (push == 5) {
      image(hintl2, 650, 300, 500, 300);
      image(xButton, 1085, 320, 50, 50);
    }
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);


    break;

  case 12:
    imageMode(CORNERS);
    image(stageimg1, 270, 0, 1530, 1000);   
    fill(0);
    rectMode(CORNER);
    bbutton1.display();
    bbutton2.display();
    bbutton3.display();
    bbutton4.display();
    bbutton5.display();
    keybutton1.display();
    if (mouseX>870&&mouseX<950&&mouseY>465&&mouseY<545) {
      image(lock_boxover, 870, 465, 80, 80);
    } else {
      image(lock_box, 870, 465, 80, 80);
    }
    if (mouseX>570&&mouseX<630&&mouseY>566&&mouseY<646) {
      image(skull_over, 570, 566, 60, 60);
    } else {
      image(skull, 570, 566, 60, 60);
    }
    image(nkey, mouseX-20, mouseY-20, 80, 80);

    fill(0);
    noStroke();
    rectMode(CORNERS);
    rect(0, 0, 270, 1000);
    rect(1530, 0, 1800, 1000);
    stroke(255);
    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("오래된 해골 열쇠를 발견했다! 어디에 꽂히려나?", 900, 800);

    fill(0);
    noStroke();
    rectMode(CORNERS);
    rect(0, 0, 270, 1000);
    rect(1530, 0, 1800, 1000);

    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 13:
    imageMode(CORNERS);
    if (next <= 60) {
      image(stageimg1, 270, 0, 1530, 1000);
      imageMode(CORNER);
      if (mouseX>870&&mouseX<950&&mouseY>465&&mouseY<545) {
        image(lock_boxover, 870, 465, 80, 80);
      } else {
        image(lock_box, 870, 465, 80, 80);
      }
    } else if (next <=  120) {
      imageMode(CORNERS);
      image(stageimg1Open, 270, 0, 1530, 1000);
    } else if ( next >= 180) {
      stage = 19;
    }
    fill(0);
    rectMode(CORNER);
    bbutton1.display();
    bbutton2.display();
    bbutton3.display();
    bbutton4.display();
    bbutton5.display();
    keybutton1.display();
    //   if(mouseX>870&&mouseX<950&&mouseY>465&&mouseY<545){
    //  image(lock_boxover,870,465,80,80);
    //} else {
    //  image(lock_box,870,465,80,80);
    //}
    if (mouseX>570&&mouseX<630&&mouseY>566&&mouseY<646) {
      image(skull_over, 570, 566, 60, 60);
    } else {
      image(skull, 570, 566, 60, 60);
    }
    fill(0);    
    noStroke();
    rectMode(CORNERS);
    rect(0, 0, 270, 1000);
    rect(1530, 0, 1800, 1000);
    rectMode(CENTER);
    stroke(255);
    rect(900, 800, 1200, 180);
    fill(255);
    text("너라면 우기부기를 물리칠 수 있을지도..?", 900, 780);
    text("절대로 그에게 속아서는 안돼!", 900, 837); 
    next += 5;
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 14:
    imageMode(CORNERS);
    image(stageimg1, 270, 0, 1530, 1000); 
    fill(0, 0, 0, 125);
    rectMode(CORNER);
    noStroke();
    rect(0, 0, 1800, 1000);
    bbutton1.display();
    bbutton2.display();
    bbutton3.display();
    bbutton4.display();
    bbutton5.display();
    keybutton1.display();
    if (mouseX>870&&mouseX<950&&mouseY>465&&mouseY<545) {
      image(lock_boxover, 870, 465, 80, 80);
    } else {
      image(lock_box, 870, 465, 80, 80);
    }
    if (mouseX>570&&mouseX<630&&mouseY>566&&mouseY<646) {
      image(skull_over, 570, 566, 60, 60);
    } else {
      image(skull, 570, 566, 60, 60);
    }
    rectMode(CENTER);
    stroke(255);
    fill(0);
    rect(900, 800, 1200, 180);
    fill(255);
    text("단서를 더 모아보자..!", 900, 800);
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 19:
    rectMode(CORNER);
    noStroke();
    image(stage2image, 270, 0, 1260, 1000);
    inventory.display();

    image(cards, 870, 670, 100, 100);
    //image(card1d, 880, 670, 30, 45);
    //image(card2d, 880, 750, 30, 45);
    //image(card2yd, 940, 670, 30, 45);
    //image(card4d, 940, 750, 30, 45);
    imageMode(CENTER);

    image(steel, 941, 387, 307, 392);

    imageMode(CORNER);
    image(lockerbg, 930, 380, 50, 50);
    image(restart, 1580, 900, 200, 60);
    fill(0, 0, 0, fadein2);
    fadein2-=4;
    rect(270, 0, 1260, 1000);
    if (fadein2<5) {
      stage=20;
    }
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 20:

    rectMode(CORNER);
    noStroke();
    image(stage2image, 270, 0, 1260, 1000);
    inventory.display();
    imageMode(CENTER);

    image(steel, 941, 387, 307, 392);

    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    if (mouseX>780&&mouseX<980&&mouseY>200&&mouseY<580&&text2_6==0) {
      imageMode(CENTER);

      image(steelover, 941, 387, 307, 392);
      imageMode(CORNER);
      image(lockerbgover, 930, 380, 50, 50);
    } else {
      image(lockerbg, 930, 380, 50, 50);
    }
    if (mouseX>640&&mouseX<1200&&mouseY>660&&mouseY<820&&text2_6==0) {
      image(cardsover, 870, 670, 100, 100);
    } else {
      image(cards, 870, 670, 100, 100);
    }


    //image(card1d, 880, 670, 30, 45);
    //image(card2d, 880, 750, 30, 45);
    //image(card2yd, 940, 670, 30, 45);
    //image(card4d, 940, 750, 30, 45);

    if (text2_1==1) {

      fill(0, 0, 0, 150);
      rect(0, 0, 1800, 1000);
      stroke(255);
      fill(0);
      rectMode(CENTER);
      rect(900, 800, 1200, 180);
      textAlign(CENTER);
      textFont(nanum, 25);
      textSize(40);
      fill(255);
      text("문이 열리고 오래되어 휑한 복도가 나온다.", width/2, 800);
      textSize(24);
      text("Click to continue", 1350, 870);
    } else if (text2_5==1) {
      fill(0, 0, 0, 150);
      rect(0, 0, 1800, 1000);
      stroke(255);
      fill(0);
      rectMode(CENTER);
      rect(900, 800, 1200, 180);
      textAlign(CENTER);
      textFont(nanum, 25);
      textSize(40);
      fill(255);
      text("복도의 끝에는 자물쇠로 굳게 잠긴 벽난로가 보인다.", width/2, 800);
      textSize(24);
      text("Click to continue", 1350, 870);
    } else if (text2_6==1) {
      fill(0, 0, 0, 150);
      rect(0, 0, 1800, 1000);
      stroke(255);
      fill(0);
      rectMode(CENTER);
      rect(900, 800, 1200, 180);
      textAlign(CENTER);
      textFont(nanum, 25);
      textSize(40);
      fill(255);
      text("저 자물쇠는 뭐지...?", width/2, 800);
      textSize(24);
      text("Click to continue", 1350, 870);
    }
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;




  case 21:

    rectMode(CORNER);
    noStroke();
    background(#5D0000);
    image(card1, 400, 200, 200, 320);
    image(card2, 400, 600, 200, 320);
    image(card2y, 800, 200, 200, 320);
    image(card4, 800, 600, 200, 320);
    inventory.display();

    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    fill(125, 100, 100);
    image(backstage, 1300, 50, 200, 100);

    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 22:
    rectMode(CORNER);
    noStroke();
    image(chain, 270, 0, 1360, 1000);

    locker.mechanism();
    locker.display();
    inventory.display();
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    fill(125, 100, 100);
    image(backstage, 1300, 50, 200, 100);

    if (text2_2==1&&locker.unlocked==false) {
      fill(0, 0, 0, 150);
      rect(0, 0, 1800, 1000);
      stroke(255);
      fill(0);
      rectMode(CENTER);
      rect(900, 800, 1200, 180);
      textAlign(CENTER);
      textFont(nanum, 25);
      textSize(40);
      fill(255);

      text("철장이 자물쇠로 잠겨있다. 비밀번호가 필요 할 것 같군..", width/2, 800);
      textSize(24);
      text("Click to continue", 1350, 870);
    }

    if (text2_3==1&&locker.unlocked) {
      fill(0, 0, 0, 150);
      rect(0, 0, 1800, 1000);
      stroke(255);
      fill(0);
      rectMode(CENTER);
      rect(900, 800, 1200, 180);
      textAlign(CENTER);
      textFont(nanum, 25);
      textSize(40);
      fill(255);

      text("덜컥 소리가 난다. 풀렸다...!", width/2, 800);
      textSize(24);
      text("Click to continue", 1350, 870);
    } 
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;


  case 23 :
    background(0);
    rectMode(CORNER);
    noStroke();
    if (mouseX>1210&&mouseX<1290&&mouseY<870&&mouseY>130&&text2_4==0) {
      image(ladderover, 1210, 128, 80, 740);
    } else {
      image(ladder, 1210, 128, 80, 740);
    }
    image(arrow, 930, 230, 200, 200);
    flash.draw();
    image(fireplace, 270, 0, 1260, 1000);


    inventory.display();
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    fill(0, 0, 0, fadein3);
    fadein3-=10;
    rect(270, 0, 1260, 1000);

    if (text2_4==1 && fadein3<5) {
      fill(0, 0, 0, 150);
      rect(0, 0, 1800, 1000);
      stroke(255);
      fill(0);
      rectMode(CENTER);
      rect(900, 800, 1200, 180);
      textAlign(CENTER);
      textFont(nanum, 25);
      textSize(40);
      fill(255);

      text("너무 깜깜해서 아무것도 보이지 않아...", width/2, 780);
      text("뭔가 밝힐것이 있으면 좋을것 같은데..", width/2, 837);
      textSize(24);
      text("Click to continue", 1350, 870);
    }

    break;

  case 24:
    noStroke();
    anim.display();
    inventory.display();
    fill(0, 0, 0, fadein4);
    fadein4+=(fadeinspeed);
    if (fadein4<0) {
      fadeinspeed = -fadeinspeed;
    }
    if (fadein4>30) {
      fadeinspeed = -fadeinspeed;
    }

    rect(270, 0, 1260, 1000);
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    //rectMode(CORNER);
    //fill(0, 0, 0, fadein5);
    fadein5-=3;
    //rect(270, 0, 1260, 1000);
    stroke(255);
    rectMode(CENTER);
    fill(0);
    rect(900, 800, 1200, 180);
    fill(255);
    text("헉.. 헉...", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    break;
  case 25 : 

    break;
  case 26 :

    break;
  case 27 :

    break;
  case 28 :

    break;
  case 29 :

    break;



  case 30:

    back();
    rectMode(CENTER);
    noStroke();
    fill(0, 0, 0, fadeinA);
    if (fadeinA >= 100) {
      fadeinA -= 5;
    }
    rect(900, 500, 1260, 1000);


    woogie.santa();

    fill(0);
    stroke(255);
    rectMode(CENTER);
    rect(900, 800, 1200, 180);
    fill(255);
    text("새로운 방에 들어오긴 했는데... 어딘가 음산하다... ", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);


    break;

  case 31:

    back();
    rectMode(CENTER);
    noStroke();
    fill(0, 0, 0, 100);
    rect(900, 500, 1260, 1000);
    woogie.santa();

    speak();
    fill(255);
    text("저 사람...산타 같긴 한데, 설마 진짜 산타를 찾은 건가? ", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    break;

  case 32:
    back();
    rectMode(CENTER);
    noStroke();
    fill(0, 0, 0, 100);
    rect(900, 500, 1260, 1000);
    woogie.santa();


    speak();
    fill(255);
    text("산타(?): 와...주었구...나.. 어서 여기서 나가자...키득 ", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    break;

  case 33: 
    back();
    rectMode(CENTER);
    noStroke();
    fill(0, 0, 0, 100);
    rect(900, 500, 1260, 1000);
    woogie.santa();


    speak();
    fill(255);
    text("정말 산타라고? 왼쪽 문에 저 빨간 모자는 뭐지...? ", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);


    break;

  case 34:
    back();
    rectMode(CENTER);
    noStroke();
    fill(0, 0, 0, 100);
    rect(900, 500, 1260, 1000);
    woogie.santa();

    speak();
    fill(255);
    text("산타(?): 어서 오른쪽 문을 열고... 나가자....키긱... ", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    break;

  case 35:
    back();
    rectMode(CENTER);
    noStroke();
    fill(0, 0, 0, 100);
    rect(900, 500, 1260, 1000);
    woogie.santa();

    fill(0, 170);
    stroke(255);
    strokeWeight(2);
    rectMode(CENTER);
    rect(900, 500, 1200, 190);
    fill(255);

    text("두 문 중 어느 문으로 나가야 하지?", 900, 480);
    text("후... 들어갈 문을 신중히 문을 선택하자!!", 900, 537);

    textSize(20);
    text("OK", 900, 577);
    strokeWeight(1);

    break;


  case 101:

    back();
    woogie.santa();
    backOver();

    //mouseOver

    break;

  case 37: 
    background(0);
    imageMode(CENTER);
    image(back, 900, 500, 1260, 1000); 

    imageMode(CENTER);
    tint(255, c3);
    image(santa, 900, 580, 280/size, 490/size);
    tint(255, c4);
    image(boogie1, 900, 580, 280/size, 490/size);

    c3 -= 15;
    c4 += 15;

    speak();
    fill(255);
    text("우기부기: 정체를 들키고 말았군!! ", 900, 780);
    text("내 허락 없이는 절대 그 방에 들어갈 수 없어-크하하하!!!", 900, 837);
    textSize(24);
    text("Click to continue", 1350, 870);

    break;

  case 38:
    tint(255, 255);
    back();
    woogie.boogie1(size);

    speak();
    fill(255);
    text("헉 우기부기가 변장한 거였다니...!!!!!", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    break;

  case 39:
    back();
    woogie.boogie1(size);
    speak();
    fill(255);
    text("Space바를 빠르게 눌러 우기부기를 무찌르자!!!", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    rectMode(CENTER);
    fill(103);
    stroke(103);
    strokeWeight(5);
    rect(900, 200, 900, 80);
    strokeWeight(1);
    rectMode(CORNERS);
    fill(255, 100, 100);
    rect(450, 160, 900, 240);

    woogie.badsanta();
    woogie.badguy();

    xw = 0;
    yw = 0;
    break;

  case 40 :
    back();

    rectMode(CENTER);
    fill(103);
    stroke(103);
    strokeWeight(5);
    rect(900, 200, 900, 80);
    strokeWeight(1);

    rectMode(CORNERS);
    fill(255, 100, 100);

    if (keyPressed) {
      woogie.boogie2(size);
    } else if (xw-yw+900 >= 1350) {
      woogie.boogie2(size);
    } else {
      woogie.boogie1(size);
    }

    if (xw-yw+900<= 450) {
      rect(450, 160, 450, 240);
      stage = 44;
    } else if (xw-yw+900 >= 1350) {
      rect(450, 160, 1350, 240);
      stage = 41;
    } else {
      rect(450, 160, xw-yw+900, 240);
    } 

    woogie.badsanta();
    woogie.badguy();

    yw = yw + 5;          

    break;

  case 41:
    back(); 

    boogieOn -= 15;
    if (boogieOn <= 0) {
      boogieOn = 0;
      back();
    }
    imageMode(CENTER);
    woogie.boogietint(boogieOn, size);



    speak();
    fill(255);
    textSize(40);
    text("우기부기 살려~~~~", 900, 800);
    textSize(24);
    text("Click to kill woogieboogie", 1320, 870);


    break;

  case 42:
    tint(255, 255);
    back(); 
    if (moon1() == true) {
      imageMode(CENTER);
      image(backLeft, 900, 500, 1260, 1000);
    }
    speak();
    fill(255);
    textSize(40);
    text("왼쪽 문을 열어 산타를 구출하자!!", 900, 800);


    break;

  case 103:
    tint(255, 255);

    back(); 
    imageMode(CENTER);
    image(cutesanta, 900, 450, 300, 600);

    speak();
    fill(255);
    textSize(40);
    text("앗... 눈부셔...! 설마 산타님...?", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    noStroke();
    fill(255, 255, 255, andOn);
    andOn -= 15;
    rectMode(CENTER);
    rect(900, 500, 1260, 1000);


    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    break;

  case 104:
    back(); 
    imageMode(CENTER);
    image(cutesanta, 900, 450, 300, 600);
    speak();
    fill(255);
    textSize(40);
    text("산타: 여기까지 와주다니... 고마워요...!!! ", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    break;

  case 105:
    back(); 
    imageMode(CENTER);
    image(cutesanta, 900, 450, 300, 600);
    speak();
    fill(255);
    textSize(40);
    text("산타쿤.. 아니 산타님과 함께라면 뭐든지...할 수 있어", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    break;

  case 106:
    back(); 
    imageMode(CENTER);
    image(cutesanta, 900, 450, 300, 600);
    speak();
    fill(255);
    textSize(40);
    text("산타: 그럼 같이 선물 배달하러 갈까요...?", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    break;

  case 107:
    back(); 
    imageMode(CENTER);
    image(cutesanta, 900, 450, 300, 600);
    speak();
    fill(255);
    textSize(40);
    text("네!!! 그럼요!!!", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    break;


  case 108:
    background(0);
    speak();
    fill(255);
    textSize(40);
    text("산타는 성에서 탈출하게 되었고,", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    break;

  case 109:

    background(0);
    speak();
    fill(255);
    textSize(40);
    text("크리스마스 마을은 원래대로 돌아왔다.", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    break;

  case 110:

    background(0);
    imageMode(CENTER);
    image(christmas, 900, 500, 1260, 1000);
    imageMode(CENTER);
    image(restart, 900, 600, 200, 60);



    noStroke();
    fill(0, 0, 0, christ);
    christ  -= 5;
    rectMode(CENTER);
    rect(900, 500, 1260, 1000);

    if (christ <= 200) {
      if (mouseX>800&&mouseX<1000&&mouseY<630&&mouseY>570&&mousePressed) {
        stage = 0; 
        carols.stop(); 
        bgm.loop();
      }
    }



    break;

  case 43:
    background(0);
    imageMode(CENTER);
    image(back, 900, 500, 1260, 1000); 
    woogie.santachange(c1);
    woogie.woogiechange(c2);

    c1 = c1 - 15;
    c2 = c2 + 15;
    println(fadeinB);

    speak();
    fill(255);
    text("우기부기: 크하하!! 함정에 걸려들었군!!!", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);



    break;

  case 44:
    tint(255, 255);
    back();
    woogie.boogie(900, 580);
    speak();
    fill(255);
    text("우기부기: 이제 크리스마스는 내 꺼야....!!!!!", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);
    break;

  case 45:
    back();
    woogie.boogie(900, 580);
    speak();
    fill(255);
    text("우기부기: 아무도 나를 막을 수 없어!!!!", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    break;

  case 46:
    background(0);

    speak();
    fill(255);
    text("크리스마스는 설화 속의 이야기로 남게 되었고...", 900, 800);
    textSize(24);
    text("Click to continue", 1350, 870);

    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);


    break;

  case 47:
    background(0);

    speak();
    fill(255);
    text("산타는 영원히 성에 갇히게 되었다...", 900, 800);   
    textSize(24);
    text("Click to continue", 1350, 870);

    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    fadeinB = 255;

    break;

  case 48:

    background(0);

    imageMode(CENTER);
    image(badending, 900, 500, 1260, 1000);


    imageMode(CENTER);
    image(restart, 900, 600, 200, 60);

    noStroke();
    fill(0, 0, 0, fadeinB);
    fadeinB -= 5;
    rectMode(CENTER);
    rect(900, 500, 1260, 1000);

    if (fadeinB <= 180 ) {
      if (mouseX>800&&mouseX<1000&&mouseY<630&&mouseY>570&&mousePressed) stage = 0; 
      carols.stop(); 
      bgm.loop();
    }


    break;
  }
}

void stage1set() {
  rectMode(CORNER);
  image(stageimg1, 270, 0, 1260, 1000);
  fill(0, 0, 0, 125);
  rect(0, 0, 1800, 1000);
  image(books, 1418, 308, 19, 55);
  image(books, 483, 179, 20, 58);
  image(books, 353, 440, 18, 53);
  image(books, 1208, 429, 23, 54);
  image(books, 1293, 429, 20, 52);
  image(lock_box, 870, 465, 80, 80);
  image(skull, 570, 566, 60, 60);
  fill(0);
  stroke(255);
  rectMode(CENTER);
  rect(900, 800, 1200, 180);
}

void mouseReleased() {

  if (stage ==10) {
    if (text >= 5) {
      if (bbutton1.over()) {
        push = 1;
        stage = 11;
        book1 = true;
      } else if (bbutton2.over()) {
        push = 2;
        stage = 11;
        book2 = true;
      } else if (bbutton3.over()) {
        push = 3;
        stage = 11;
        book3 = true;
      } else if (bbutton4.over()) {
        push = 4;
        stage = 11;
        book4 = true;
      } else if (bbutton5. over()) {
        push = 5;
        stage = 11;
        book5 = true;
      } else if (keybutton1.over()) {
        if (book1 == true && book2 == true && book3 == true && book4 == true && book5 == true) {
          text = 1;
          stage = 12;
          pkeys = true;
        } else {
          stage = 14;
        }
      } else if (mouseX>870&&mouseX<950&&mouseY>465&&mouseY<545) {
        if (book1 == false || book2 == false || book3 == false|| book4 == false|| book5 == false) {
          stage = 14;
        }
      }
    }
    text ++;
  } else if (stage == 11) {
    if (mouseX>1000&&mouseX<1250&&mouseY>300&&mouseY<400) {
      push = 0;
      stage = 10;
    }
  } else if (stage == 12) {
    if (870<mouseX&&mouseX<930&&478<mouseY&&mouseY<538) {
      stage = 13;
    }
    if (mouseX>1350&&mouseX<1580&&mouseY>850&&mouseY<950) {
      text ++;
    }
  } else if (stage == 14) {
    stage = 10;
  }
  /////////////// 

  if (stage==20&&text2_1==1) {
    text2_1=0;
  } else if (stage==20&&text2_5==1) {
    text2_5=0;
  } else if (stage==20&&text2_6==1) {
    text2_6=0;
  } else if (stage==20&&text2_6==0) {

    if (mouseX>640&&mouseX<1200&&mouseY>660&&mouseY<820&&text2_6==0) {
      stage=21;
    }
    if (mouseX>780&&mouseX<980&&mouseY>200&&mouseY<580&&text2_6==0) {
      stage=22;
    }
  } else if (stage==22&&text2_2==1) {
    text2_2=0;
  }
  if (stage==21) {
    if (mouseX>1300&&mouseX<1500&&mouseY<150&&mouseY>50) {
      stage=20;
    }
  } 

  //locker

  else if (stage==22) {




    if (mouseX>1300&&mouseX<1500&&mouseY<150&&mouseY>50) {
      stage=20;
    }

    if (locker.unlocked==false) {
      if (mouseX>1200&&mouseX<1370) {
        if (mouseY>150&&mouseY<320) {
          locker.a+=1;
        }
        if (mouseY>320&&mouseY<490) {
          locker.b+=1;
        } 
        if (mouseY>490&&mouseY<660) {
          locker.c+=1;
        }
        if (mouseY>660&&mouseY<830) {
          locker.d+=1;
        }
      }
    }
  }

  if (mouseX>1300&&mouseX<1500&&mouseY<150&&mouseY>50&&stage==21) {
    stage=20;
  } else if (locker.unlocked==true&&stage==22) {
    stage=23;
  }

  float d2 = dist(1190, 470, mouseX, mouseY);
  float d1 = dist(596, 450, mouseX, mouseY);
  //////////////  
  //////////이거 위치옮기면 스테이지 30씹혀용



  if (stage==23&&text2_4==1&&fadein3<5) {
    text2_4=0;
  } else if (stage==23&&mouseX>1210&&mouseX<1290&&mouseY<870&&mouseY>130&&text2_4==0) {
    stage = 24;
  } else if (stage == 24 &&fadein5<5) {
    stage=30;
  } else if (stage == 30 ) stage = 31;
  else if (stage == 31) stage = 32;
  else if (stage == 32) stage = 33;
  else if (stage == 33) stage = 34;
  else if (stage == 34) stage = 35;
  else if (stage == 35) stage = 101;
  else if ((mouseX > 1065 && mouseX < 1308 && mouseY > 500 && mouseY < 827 || d2 < 182) && stage == 101) {
    stage =43;
  } else if (stage == 43) stage = 44;
  else if (stage == 44) stage = 45;
  else if (stage == 45) stage = 46;
  else if (stage == 46) stage = 47;
  else if (stage == 47) stage = 48;
  else if ((mouseX > 466 && mouseX < 725 && mouseY > 450 && mouseY < 816 || d1 < 200) && stage == 101) {
    stage = 37;
  } else if ((mouseX > 466 && mouseX < 725 && mouseY > 450 && mouseY < 816 || d1 < 200) && stage == 42) {
    stage = 103;
    bgm.stop();
    carols.loop();
  } else if (stage == 37) stage = 38;
  else if (stage == 38) stage = 39;
  else if (stage == 39) stage = 40;
  else if (stage == 41) stage = 42;
  else if (stage == 103) stage = 104;
  else if (stage == 104) stage = 105;
  else if (stage == 105) stage = 106;
  else if (stage == 106) stage = 107;
  else if (stage == 107) stage = 108;
  else if (stage == 108) stage = 109;
  else if (stage == 109) stage = 110;




  if (stage == 0 && mouseX > 720 && mouseX < 1100 && mouseY > 660 && mouseY < 745) {
    stage = 1;
  } else if (stage == 1) {
    stage = 2;
  } else if (stage == 2) {
    stage = 3;
  } else if (stage == 3) {
    stage = 4;
  } else if (stage == 4) {
    stage = 5;
  } else if (stage == 5) {
    stage = 6;
  } else if (stage == 6) {
    stage = 7;
  } else if (stage == 7) {
    stage = 8;
  } else if (stage == 8) {
    stage = 9;
  } else if (stage == 9 && ((mouseX < 1090 && mouseX > 685 && mouseY < 800 && mouseY > 320) || (d<330))) {
    stage = 100;
  } else if (stage == 100) {
    stage = 10;
  } 

  //if (stage == 30 ) stage = 31;
  //else if (stage == 31) stage = 32;
  //else if (stage == 32) stage = 33;
  //else if (stage == 33) stage = 34;
  //else if (stage == 34) stage = 35;
  //else if (stage == 35) stage = 101;



  //return

  if (!(stage == 108 || stage == 48)) {
    if (mouseX>1580&&mouseX<1780&&mouseY<960&&mouseY>900) {
      stage=0; 
      carols.stop(); 
      bgm.loop();
    }
  }
}


void keyPressed() {
  if (key == 'a') stage = 30;
  if (key == '2') stage = 19;
  if (stage == 39 && keyCode == 32) stage = 40;
  if (stage == 40 && keyCode == 32) xw = xw+ 17;
}




void flip(PImage cam) {
  PImage buffer = new PImage(cam.width, cam.height);
  for (int i=0; i<cam.pixels.length; i++) {
    buffer.pixels[i] = cam.pixels[i];
  }
  for (int x=0; x<cam.width; x++) {
    for (int y=0; y<cam.height; y++) {
      cam.pixels[y*cam.width+x] = buffer.pixels[y*cam.width+(cam.width-x-1)];
    }
  }
}

void back() {
  background(0);
  imageMode(CENTER);
  image(back, 900, 500, 1260, 1000); 
  imageMode(CORNER);
  image(restart, 1580, 900, 200, 60);
}

void backOver() {
  if (moon2() == true) {
    background(0);
    imageMode(CENTER);
    image(backRight, 900, 500, 1260, 1000);
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    woogie.santa();
  }
  if (moon1() == true) {
    background(0);
    imageMode(CENTER);
    image(backLeft, 900, 500, 1260, 1000);
    imageMode(CORNER);
    image(restart, 1580, 900, 200, 60);
    woogie.santa();
  }
}

void speak() {
  fill(0);
  stroke(255);
  rectMode(CENTER);
  rect(900, 800, 1200, 180);
}

boolean moon1() {
  float d1 = dist(596, 450, mouseX, mouseY);
  if (mouseX > 466 && mouseX < 725 && mouseY > 450 && mouseY < 816 || d1 < 200 ) {
    return true;
  } else {
    return false;
  }
}

boolean moon2() {
  float d2 = dist(1190, 470, mouseX, mouseY);
  if (mouseX > 1065 && mouseX < 1308 && mouseY > 500 && mouseY < 827 || d2 < 182) return true;
  else return false;
}

void change() {
  boogieOn -= 15;
  andOn += 15;
  println(boogieOn);

  imageMode(CENTER);
  colorMode(RGB);
  tint(255, boogieOn);
  image(santa, 900, 580, 280, 490);
  tint(255, andOn);
  image(boogie1, 900, 580, 280, 490);
}

void talk(PImage a, String b, String c) {
  imageMode(CENTER);
  image(a, 450, 600, 200, 320);

  fill(0);
  stroke(255);
  rectMode(CENTER);
  rect(900, 800, 1200, 180);
  noStroke();
  fill(255);
  rectMode(CORNERS);
  rect(300, 670, 600, 710);
  triangle(600, 670, 600, 710, 650, 710);

  fill(0);
  textSize(24);
  text(b, 450, 700);

  fill(255);
  textSize(40);
  text(c, 900, 800);

  textSize(24);
  text("Click to continue", 1350, 870);
}

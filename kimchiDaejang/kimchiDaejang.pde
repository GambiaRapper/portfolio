int stage = 0;
int score = 0;
//player
Player myPlayer;
PImage playerImg;
PImage playerImg1;
PImage playerImg2;
PImage playerImg3;
PImage dieImg;
PImage kickImg0;
PImage kickImg1;
float pX; 
float pY;
float xspeed=10;
float yspeed=10;
float left=1;
int kick=2;

//inssa Stage
PImage inssaImage0;
PImage inssaImage1;
PImage inssaImage2;
PImage inssaImage3;
Inssa inssa1;
Inssa inssa2;
Inssa inssa3;

//bus Stage
PImage bgRoad0;
PImage bgRoad;
PImage busImage;
int death=0;
Bus myBus;

//farmer Stage
int die=0;
PImage farmerImage;
PImage farmerImage1;
PImage farmerImage2;
PImage farmerImage3;
PImage baechuImage;
PFont namsan;
Farmer farmer1;
Farmer farmer2;
Farmer farmer3;
Farmer farmer4;
Farmer farmer5;


//story image
PImage[] story = new PImage[50];
float fadeout20 = 255;





void setup() {
  size(1000, 600); 
  //Image
  bgRoad=loadImage("road.png");
  bgRoad0=loadImage("road0.png");
  busImage=loadImage("busImage.png");
  playerImg=loadImage("playerImage.png");
  playerImg1=loadImage("playerImage1.png");
  playerImg2=loadImage("playerImage2.png");
  playerImg3=loadImage("playerImage3.png");
  kickImg0=loadImage("kickImage0.png");
  kickImg1=loadImage("kickImage1.png");
  dieImg=loadImage("dieImage.png");
  inssaImage0=loadImage("inssaImage0.png");
  inssaImage1=loadImage("inssaImage1.png");
  inssaImage2=loadImage("inssaImage2.png");
  inssaImage3=loadImage("inssaImage3.png");
  farmerImage=loadImage("farmerImage.png");
  farmerImage1=loadImage("farmerImage1.png");
  farmerImage2=loadImage("farmerImage2.png");
  farmerImage3=loadImage("farmerImage3.png");
  baechuImage=loadImage("baechu.png");
  namsan=loadFont("SeoulNamsanEB-48.vlw");

  for (int i=0; i<=5; i++) {
    story[i]=loadImage("story"+i+".PNG");
  }
  for (int i=10; i>=10&&i<=11; i++) {
    story[i]=loadImage("story"+i+".PNG");
  }
  for (int i=20; i>=20&&i<=26; i++) {
    story[i]=loadImage("story"+i+".PNG");
  }
  for (int i=30; i>=30&&i<=31; i++) {
    story[i]=loadImage("story"+i+".PNG");
  }
  for (int i=40; i>=40&&i<=42; i++) {
    story[i]=loadImage("story"+i+".PNG");
  }

  pX=800;
  pY=500;

  //Class
  myBus=new Bus();
  myPlayer=new Player();
  inssa1 = new Inssa(600, 500, 200, -1);
  inssa2 = new Inssa(800, 500, 300, -1);
  inssa3 = new Inssa(500, 500, 250, -1);
  farmer1 = new Farmer(500, 300, 200, -1);
  farmer2 = new Farmer(200, 100, 300, -1);
  farmer3 = new Farmer(400, 400, 400, -1);
  farmer4 = new Farmer(600, 200, 800, -1);
  farmer5 = new Farmer(800, 500, 250, -1);
}

void draw() {
  imageMode(CENTER);
  switch (stage) {


  case 0 : //intro

    image(story[0], 500, 300, 1000, 600);

    break;

  case 1 : //intro

    image(story[1], 500, 300, 1000, 600);
    score=0;

    break;
  case 2 : //intro

    image(story[2], 500, 300, 1000, 600);

    break;

  case 3 : //intro

    image(story[3], 500, 300, 1000, 600);

    break;

  case 4 : //intro

    image(story[4], 500, 300, 1000, 600);
    pX=100; 
    pY=490;
    die=0;
    death=0;
    xspeed=10;
    yspeed=0;


    break;


    ///////////////////////// 
  case 5 : //runaway from inssa
    yspeed=0;
    image(story[5], 500, 300, 1000, 600);
    inssa1.display();
    inssa1.move();
    

    inssa2.display();
    inssa2.move();
    
    inssa3.display();
    inssa3.move();


    myPlayer.move();
    myPlayer.display();
    //myPlayer.kimchiKick();

    inssa1.die();
    inssa2.die();

    if (pX>800&&pY>=490) {
      stage=10;
    }

    break;

    //////////////////////

  case 10  : //busStage

    image(story[10], 500, 300, 1000, 600);

    pX=800;
    pY=500;
    xspeed=10;
    yspeed=10;
    //if (mousePressed) {
    //  stage=11;}

    break;

  case 11 :


    image(story[11], 500, 300, 1000, 600);

    myPlayer.move();
    myPlayer.display();

    myBus.move();
    myBus.display();
    myBus.fadeout();
    if (death==1) {
      xspeed=0;
      yspeed=0;
    }


    break;

    ////////////////

  case 20 : // story

    image(story[20], 500, 300, 1000, 600);
    noStroke();
    fill(255, 255, 255, fadeout20-=4);
    rect(0, 0, 1000, 600);

    break;

  case 21 : // story

    image(story[21], 500, 300, 1000, 600);

    break;

  case 22 : // story

    image(story[22], 500, 300, 1000, 600);

    break;


  case 23 : // story

    image(story[23], 500, 300, 1000, 600);

    break;

  case 24 : // story

    image(story[24], 500, 300, 1000, 600);

    break;

  case 25 : // story

    image(story[25], 500, 300, 1000, 600);

    break;

  case 26 : // story

    image(story[26], 500, 300, 1000, 600);

    break;
    ////////////////////////////////////////

  case 30 : // gamestage

    image(story[30], 500, 300, 1000, 600);
    pX=500; 
    pY=100;
    die=0;
    death=0;
    death=0;
    xspeed=10;
    yspeed=10;


    break;



  case 31:    // gamestage

    image(story[31], 500, 300, 1000, 600);
    textAlign(CENTER);
    fill(255);
    textFont(namsan,30);
    text("농부를 습격해 3개 이상의 배추를 모아주세요!",300,50);
    text("모은 배추:"+score+"개",150,100);

    farmer1.display();
    farmer1.move();
    farmer3.display();
    farmer3.move();
    farmer4.display();
    farmer4.move();
    farmer5.display();
    farmer5.move();

    farmer2.display();
    farmer2.move();


    myPlayer.move();
    myPlayer.display();
    myPlayer.kimchiKick();

    farmer1.die();
    farmer2.die();
    farmer3.die();
    farmer4.die();
    farmer5.die();

    farmer1.baechu();
    farmer2.baechu();
    farmer3.baechu();
    farmer4.baechu();
    farmer5.baechu();

    break;
  case 40 : // ending
    image(story[40], 500, 300, 1000, 600);
    break;

  case 41 : // ending
    image(story[41], 500, 300, 1000, 600);
    break;

  case 42 : // ending
    image(story[42], 500, 300, 1000, 600);
    break;
  }
}

//


//
void mouseReleased() {
  if (stage<=4) {
    stage+=1;
  } else if (stage==10) {
    stage=11;
  } else if (stage==20&&fadeout20<0)
  {
    stage++;
  } else if (stage>=21&&stage<=25) {
    stage+=1;
  } else if (stage==26) {
    stage=30;
  } else if (stage==30) {
    stage=31;
  } else if (stage>=40&&stage<=41) {
    stage+=1;
  }
}

void keyPressed() { 
  if (key=='r') {
    stage=0;
  }
}

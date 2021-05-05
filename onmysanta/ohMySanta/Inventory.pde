class Inventory {


  void display() {
    rectMode(CORNER);
    fill(0);
    rect(0, 0, 270, 1000);
    rect(1530, 0, 270, 1000);

    if(stage==23){
      textAlign(LEFT,CORNER);
      textFont(nanum, 48);
      textSize(22);
      fill(255);
      text("후레쉬를 사용해서", 1540, 390);
      text("어두운 곳을 비춰보세요!!", 1540, 415);
      text("(후면 스위치로 on/off)", 1540, 440);
    }
  }
}

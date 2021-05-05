class keyButton{
  int x,y,w,h,nx,ny;
  PImage keys;
  boolean end = true;
  keyButton (int _x, int _y, int _w, int _h,int _nx,int _ny, PImage _keys){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    nx = _nx;
    ny = _ny;    
    keys = _keys;
  }
  
  void display(){
    
    if(open){
      if(this.over()){
        stage=19;
      }
    }
  }
  
  boolean over(){
    int x2 = x+w; 
    int y2 = y+h;
    if(x-30 < mouseX && mouseX < x2+30 && y-30<mouseY && mouseY<y2+30){
      return true;
    } else {
      return false;
    }
  }
  boolean overpress(){
    int nx2 = nx+70; 
    int ny2 = ny+70;
    if(nx < mouseX && mouseX < nx2 && ny<mouseY && mouseY<ny2){
      return true;
    } else {
      return false;
    }
  }
  }

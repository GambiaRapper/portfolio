class bookButton{
  int x,y,w,h,nx,ny, n;
  PImage book,obook,ibook;
  boolean end = true;
  bookButton (int _x, int _y, int _w, int _h,int _nx,int _ny, PImage _book,PImage _ibook, PImage _obook, int _n){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    nx = _nx;
    ny = _ny;

    
    n = _n;
    obook = _obook;
    book = _book;
    ibook = _ibook;
  }
  
  void display(){
    imageMode(CORNER);
    image(book,x,y,w,h);
    if(this.over()){
      image(ibook,x,y,w,h);      
    }
  }
  
  boolean over(){
    int x2 = x+w; 
    int y2 = y+h;
    if(x < mouseX && mouseX < x2 && y<mouseY && mouseY<y2){
      return true;
    } else {
      return false;
    }
  }
  boolean ghint(){
    int nx2 = nx+70; 
    int ny2 = ny+70;
    if(nx < mouseX && mouseX < nx2 && ny<mouseY && mouseY<ny2){
      return true;
    } else {
      return false;
    }
  }    
  
}
    

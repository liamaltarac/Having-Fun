class Cell{
  
  float x, y, w, h;
  int state = 0;  // 0-Dead 1-Alive
  int c = 255;
  Cell(float x,
       float y,
       float w,
       float h
       ){
   
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    
      //this.state = state;
    
  }
  
  void display(){
    if(this.state == 0)
      c = 255;
    else
      c = 0;
    fill(c);
    rect(x,y,w,h);
  }
  
  void kill(){
    this.state = 0;
  }
  
  void revive(){
    this.state = 1;
  }
  
  int getState(){
    return state;
  }
  
  void setState(int state){
     this.state = state; 
  }
  
  
}
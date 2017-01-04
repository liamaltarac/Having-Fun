class Cell{
    
  float x;
  float y;
  float w;
  float h;
  int c = 255;
  
  Cell(float x, float y, float w, float h){
  
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void display(){
    fill(c);
    rect(x, y, w, h);
  }
  
  void toggle(){
    c = c^255; 
    display();
  }
  
  void setColor(){
    c = c^255; 
    display();
  }
  
  int getColor(){
    return c;
  }

}
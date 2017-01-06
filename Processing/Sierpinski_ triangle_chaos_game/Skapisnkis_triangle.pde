void setup(){
  
  float x, y;
  
  int cycles = 1000000;
  
  size(800, 800);
  background(255);
  
  x = random(-width, width);
  y = random(-height, height);

  point(x , y);
  
  for(int i = 0; i<cycles; i++){
   
    switch((int)random(1,6)){
     case 1: x /= 2;
             y = (y + height) / 2;
             break;
             
     case 2: x /= 2;
             y = (y+height) / 2;
             break;
             
     case 3: x = (x+width/2) / 2;
             y /= 2;
             break; 
             
     case 4: x = (x+width/2) / 2;
             y /= 2;
             break;
             
     case 5: x = (x+width) / 2;
             y = (y+height) / 2;
             break;
             
     case 6: x = (x+width) / 2;
             y = (y+height) / 2;
             break;             
    }
    
    point(x, y);
    
  }
  
}

void draw(){}
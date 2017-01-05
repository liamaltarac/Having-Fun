import java.util.Vector;
// 2D Array of objects
Cell[][] grid;
Ant ant;
// Number of columns and rows in the grid
int cols = 200;
int rows = 200;

int speed = 10;
int counter = 0;

int prevCols;
int prevRows;
boolean started = false;

void setup() {
  size(800,800);
  ant = new Ant(cols/2,rows/2);
  grid = new Cell[400][400];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      grid[i][j] = new Cell(i*(width/rows),j*(height/cols), height/cols, height/cols);
    }
  }

}

void draw() {
  noStroke();
  background(0);
  
      if(!started){
   
    
      for(int k = -1; k<=20; k++){
   for(int l = -1; l<=20; l++){
          grid[mouseX/4][mouseY/4].setColor();
   }
  }
    
    if(key == ENTER)
      started = true;
    
for(int i=1; i<rows-1; i++){
    for(int j=1; j<cols-1; j++){
        grid[i][j].display(); }}

}

else{
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      grid[i][j].display();
    }
  }
  
  
  

  if(grid[ant.getXPos()][ant.getYPos()].getColor() == 255)
      ant.rotateRight();
  else
      ant.rotateLeft();
      
  
  grid[ant.getXPos()][ant.getYPos()].toggle();
  ant.move();
  

}

}
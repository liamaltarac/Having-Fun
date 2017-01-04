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
  frameRate(4000);
  noStroke();
  background(0);
  
  
  
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
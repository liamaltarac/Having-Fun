import java.util.Vector;
// 2D Array of objects
Cell[][] grid;
Ant ant;
// Number of columns and rows in the grid
int cols = 100;
int rows = 100;

void setup() {
  size(800,800);
  ant = new Ant(50,50);
  grid = new Cell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Initialize each object
      grid[i][j] = new Cell(i*8,j*8, 8, 8);
    }
  }
}

void draw() {
  frameRate(4000);
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
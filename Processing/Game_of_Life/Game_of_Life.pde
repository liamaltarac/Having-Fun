Cell[][] grid;
Cell[][] oldGrid;

int cols = 200;
int rows = 200;

int numNeighbours = 0;

boolean started = false;

int numNeighbours(Cell[][] g, int i, int j){
 
  int counter = 0;
  for(int k = -1; k<=1; k++){
   for(int l = -1; l<=1; l++){
       counter += g[i+k][j+l].getState();
   }
  }
  return counter - grid[i][j].getState();
 }

void setup(){
  
  size(800,800);
 
  grid = new Cell[cols][rows];
  oldGrid = new Cell[cols][rows];

  for(int i=0; i<rows; i++){
    for(int j=0; j<cols; j++){
      grid[i][j] = new Cell(i*(width/rows),j*(height/cols), height/cols, height/cols);
      oldGrid[i][j] = new Cell(i*(width/rows),j*(height/cols), height/cols, height/cols);

    }
  } 
  
    for(int i=1; i<rows-1; i++){
         grid[i][(int)(-sin(i)*sin(i))+40].revive(); 
        grid[i][(int)(log(i))/40].revive(); 
        grid[(int)(-sin(i)*sin(i))+40][i].revive(); 
        grid[(int)(-30.0*cos(i))+40][i].revive(); 

    }
    

    }

  


void draw(){
  frameRate(10);
  background(0);
  noStroke();
  
  if(!started){
   
    
      for(int k = -1; k<=20; k++){
   for(int l = -1; l<=20; l++){
          grid[mouseX/4][mouseY/4].revive();
   }
  }
    
    if(key == ENTER)
      started = true;
    
for(int i=1; i<rows-1; i++){
    for(int j=1; j<cols-1; j++){
        grid[i][j].display(); }}

}
  
  else{
  
  for(int i=1; i<rows-1; i++){
    for(int j=1; j<cols-1; j++){
        oldGrid[i][j].setState(grid[i][j].getState());
    }
  }
  
  for(int i=1; i<rows-1; i++){
    for(int j=1; j<cols-1; j++){
      if(oldGrid[i][j].getState() == 1 && numNeighbours(oldGrid, i, j) < 2){
        grid[i][j].kill();
      }
      
      else if(oldGrid[i][j].getState() == 1 &&
              (numNeighbours(oldGrid, i, j) == 2 ||
               numNeighbours(oldGrid, i, j) == 3)){
        grid[i][j].revive();
      }
      else if(oldGrid[i][j].getState() == 1 &&
              numNeighbours(oldGrid, i, j) > 3){
        grid[i][j].kill();
      }
      else if(oldGrid[i][j].getState() == 0 &&
              numNeighbours(oldGrid, i, j) == 3){
        grid[i][j].revive();
      }
      
      

    }
  }
  
for(int i=1; i<rows-1; i++){
    for(int j=1; j<cols-1; j++){
        grid[i][j].display(); }}

}

}
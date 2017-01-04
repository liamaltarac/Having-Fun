class Ant{
  
   int x;
   int y;
   private static  final int NORTH = 1;
   private static final int SOUTH = 2;
   private static final int EAST =  3;
   private  static final int WEST =  4;
   
    private int direction = 2;

   Ant(int x, int y){
     this.x = x; //Starting X, Y position
     this.y = y;
     //this.direction = ;

     //Which direction ant is facing
   }
   
   void rotateRight(){
     switch(direction){
       case NORTH: direction=EAST; break; 
       case SOUTH: direction=WEST;  break;
       case EAST: direction=SOUTH; break; 
       case WEST: direction=NORTH; break;  
     }   
   }
   
   void rotateLeft(){
     switch(direction){  
       case NORTH: direction=WEST; break; 
       case SOUTH: direction=EAST;  break;
       case EAST: direction=NORTH; break; 
       case WEST: direction=SOUTH; break;      
     }
     println(direction);
   }
   
   void move(){
     switch(direction){
       case NORTH: y -= 1;  break;
       case SOUTH: y += 1;  break;
       case EAST:  x += 1;  break;
       case WEST:  x -= 1;  break;   
     }
   }
   
   int getXPos(){
     return x;
   }
   
   int getYPos(){
     return y;
   }
   

 
 }
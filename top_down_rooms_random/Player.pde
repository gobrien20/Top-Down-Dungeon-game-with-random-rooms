class Player{
  float x, y;
  float w = 20;
  PVector pdir = new PVector(0, -1);
  PVector dir = new PVector(0, 0);
  int score = 0;
  int lives;
  float strength = 10;
  float deltaTime = 0;
  
  Player(float x, float y){
    this.x = x;
    this.y = y;
    lives = 3;
  }
  
  void show(){
    noStroke();
    fill(200, 0, 250);
    pushMatrix();
    rectMode(CENTER);
    rect(x, y, w, w);
    popMatrix();
  }
  
  void update(){
    walk();
    if(isMovingx || isMovingy){
      doorShift();
    }
    
    if(deltaTime <= 0){
      strength = 10;
    }
    
    deltaTime -= 0.001;
  }
  
  void walk(){
    x += dir.x * 5;
    y += dir.y * 5;
  }
  
  void doorShift(){
    if(isMovingx){
      if(xdir > 0){
        x += shiftAmount;
      }else{
        x -= shiftAmount;
      }
    }else if(isMovingy){
     if(ydir > 0){
        y += shiftAmount;
      }else{
        y -= shiftAmount;
      }
    }
  }
}

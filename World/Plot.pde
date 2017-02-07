class Plot{
  float points;
  float x;
  float y;
  Flower flower;
  float id;

  Plot(float x1,float y1,Flower f){
    
    x=x1;
    y=y1;
    flower = f;
  }  

  void run(){
    display();
  }

  void display(){
    if(points != 0)
      points = 0;
    fill(102,51,0);
    rectMode(CENTER);
    rect(x,y,58,58);
    mousePressed();
    if(flower != null){
      flower.run();
      if(flower.dead == true)
        flower = null;
    }
   
  }
  void setID(float i){
    id = i;
  }
  
  void mousePressed(){
    if(flower == null &&  id != 0 && mousePressed == true && mouseButton == LEFT && mouseX >x-29 && mouseX < x+29 && mouseY > y-29 && mouseY < y+ 29){
       Flower f = new Flower(x,y,id);
       flower = f;
     }
     if(flower != null && flower.pickable == true && mousePressed == true && mouseButton == RIGHT && mouseX >x-29 && mouseX < x+29 && mouseY > y-29 && mouseY < y+ 29){
       points = flower.getPoints();
       flower = null;

     }
  }
}

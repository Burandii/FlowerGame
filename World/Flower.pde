class Flower{
  int points = 0;
  float id = 0;
  float growTime;
  float x;
  float y;
  PImage photo;
  boolean pickable;
  boolean dead;
  Flower(float x1, float y1, float ident)
  {
     dead = false;
     pickable = false;
     x = x1;
     y = y1;
     id = ident;
     photo = loadImage("Growing.gif");
  }
  void run(){
    
    if(id == 1){
      if(growTime == 90){
        photo = loadImage("Rose_D.gif");
      }
      else if(growTime == 180){
        float m = random(10000);
        if(m < 100){
          photo = loadImage("RoseGolden_G.gif");
          points = 500;
        }
        else if(m < 500){
          photo = loadImage("RoseBlue_G.gif");
          points = 200;
        }
        else if(m<2000){
          photo=loadImage("RosePink_G.gif");
          points = 100;
        }
        else if(m <4000){
          photo = loadImage("RosePurple_G.gif"); 
          points = 30;
        }
        else{
          photo = loadImage("Rose_G.gif");
          points = 10;
        }
        pickable = true;
      }
      else if(growTime == 2000)
        dead = true;
    }
    
    else if(id == 2){
      if(growTime == 100){
        photo = loadImage("Tulip_D.gif");
      }
      else if(growTime == 250){
        float m = random(10000);
        if(m<500){
          photo=loadImage("TulipBlue_G.gif");
          points = 500;
        }
        else if(m<1000){
          photo=loadImage("TulipPink_G.gif");
          points = 100;
        }
        else if(m<3000){
          photo = loadImage("TulipPurple_G.gif");
          points = 50;
        }
        else{
          photo = loadImage("Tulip_G.gif");
          points = 20;
        }
        pickable = true;
      }
      else if(growTime == 1200)
        dead = true;
    }
    
    else if(id ==3){
      points = 100;
      if(growTime == 320){
        photo = loadImage("IceFlower_D.gif");
      }
      else if(growTime == 600){
        float m = random(10000);
        if(m < 100){
          photo=loadImage("IceFlowerSPECIAL_G.gif");
          points = 10000;
        }
        else{
          photo = loadImage("IceFlower_G.gif");
          points = 100;
        }
        pickable = true;
      }
      else if (growTime == 700)
        dead = true;
    }
    
    else if(id == 4){
      if(growTime == 600){
        photo = loadImage("GoldenFlower_D.gif");
      }
      else if(growTime == 800){
        float m = random(10000);
        if(m < 50){
          photo=loadImage("GoldenFlowerSPECIAL_G.gif");
          points = 100000;
        }
        else{
          photo = loadImage("GoldenFlower_G.gif");
          points = 200;
        }
        pickable = true;
      }
      else if(growTime == 850){
        dead = true;
      }
    }
    
    else if(id == 666){
      photo = loadImage("Rafflesia.gif");
    }
    
  update();
  display();
  }

  
  void display(){
    imageMode(CENTER);
    if(id != 0)
      image(photo,x,y);
  }
  void update(){
    growTime++;
  }  
  void setFlowerID(float i){
    id = i;
  }
  int getPoints(){
    return points;
  }
  
}

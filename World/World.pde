//ahhhhhhhhhh!!!!!!!!!!!!!!
//my terribly-coded thing

PImage rose;
PImage tulip;
PImage iceflower;
PImage goldenflower;
float id;
int points = 0;
ArrayList<Plot> plots;
ArrayList<Flower>flowers;


void setup(){
  imageMode(CENTER);
  rose = loadImage("Rose_G.gif");
  tulip = loadImage("Tulip_G.gif");
  iceflower = loadImage("IceFlower_G.gif");
  goldenflower = loadImage("GoldenFlower_G.gif");
  textAlign(CENTER,CENTER);
  
  plots = new ArrayList<Plot>();
  flowers = new ArrayList<Flower>();
  
  size(640,580);
  smooth();
  
  
  float x = 40;
  float y = 40;
  for(int i = 1; i<=60; i++)
  {
    if(x > 680)
      i=9000;
    Plot p = new Plot(x,y,null);
    plots.add(p);
    x = x + 58;
    if(i%4 == 0){
      y+=70;
      if(x !=300)
        x-=58*4;
    }
    if(y > height-(40+58)){
      y = 40;
      x+=385;
    }
    
  }
}

/////

void draw(){
  background(0,255,0);
  for(int i = 0; i<plots.size(); i++){
    plots.get(i).run();
    plots.get(i).setID(id);
    points+=plots.get(i).points;
  }
  
  
  text("POINTS",width/2,20);
  text("" + points, width/2,40);
    noFill();
    
    
  if(keyPressed){
    if(key == '1')
      id = 1;
    else if(key == '2')
      id = 2;
    else if(points >= 500 && key == '3')
      id = 3;
    else if(points >= 10000 && key == '4')
      id = 4;
  }


  if(id == 1)
    rect(40,height-40,58,58);
  else if(id == 2)
    rect(127,height-40,58,58);
  else if(points >= 500 && id == 3)
    rect(214,height-40,58,58);
  else if(points >= 500 && id == 4)
    rect(301,height-40,58,58);
  image(rose,40,height-40);
  image(tulip,127,height-40);
  if(points >= 500)
    image(iceflower, 214,height-40);
  if(points >= 10000)
    image(goldenflower,301,height-40);

  

}




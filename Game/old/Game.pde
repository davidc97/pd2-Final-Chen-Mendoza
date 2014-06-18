<<<<<<< HEAD
PImage startscreen;
PImage background1;
PFont title;
int screensizex, screensizey, stage;
//stage will be how we move from title screen to game
void setup(){
  stage = 1;
  screensizex = 512;  
  screensizey = 432;
  size(screensizex, screensizey);
  //the background i put is just to test
  //we can make one with our game title and stuff
  startscreen = loadImage("graphics/start.gif");
  background1 = loadImage("graphics/background1.jpeg");
  image(startscreen, 0, 0, screensizex, screensizey);
  title = createFont("font",1000,true);
}
void draw(){
  if(stage ==1){
    textAlign(CENTER);
    text("Redemption",200,100);
    text("Press any key to start game",200,170);
    if (keyPressed == true){
      stage = 2;
    }
  }
  if(stage==2){
    image(background1,0,0, screensizex, screensizey);
  }
  

=======
PImage startscreen;
PImage background1;
PImage test;
PFont title;
int screensizex, screensizey, stage;
//stage will be how we move from title screen to game
void setup(){
  stage = 1;
  screensizex = 512;  
  screensizey = 432;
  size(screensizex, screensizey);
  //the background i put is just to test
  //we can make one with our game title and stuff
  startscreen = loadImage("graphics/start.gif");
  background1 = loadImage("graphics/background1.jpeg");
  image(startscreen, 0, 0, screensizex, screensizey);
  title = createFont("font",1000,true);
}
void draw(){
  if(stage ==1){
    textAlign(CENTER);
    text("Redemption",200,100);
    text("Press any key to start game",200,170);
    if (keyPressed == true){
      stage = 2;
    }
  }
  if(stage==2){
    image(background1,0,0, screensizex, screensizey);
  }
  

>>>>>>> be1e265c5623fdb15988227e8c494b15d34e434d

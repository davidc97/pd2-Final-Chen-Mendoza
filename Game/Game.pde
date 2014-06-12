PImage startscreen;
PFont title;
int screensizex, screensizey, stage;
//stage will be how we move from title screen to game
void setup(){
  stage = 1;
  screensizex = round(displayWidth*0.90);
  screensizey = round(displayHeight*0.90);
  size(screensizex, screensizey);
  //the background i put is just to test
  //we can make one with our game title and stuff
  startscreen = loadImage("graphics/start.gif");
  image(startscreen, 0, 0, screensizex, screensizey);
  title = createFont("font",1000,true);
}
void draw(){
  if(stage ==1){
    textAlign(CENTER);
    text("GAME", 130,150);
    text("Press any key to start game",100,170);
    if (keyPressed == true){
      stage = 2;
    }
  }
  if(stage==2){
  }
  


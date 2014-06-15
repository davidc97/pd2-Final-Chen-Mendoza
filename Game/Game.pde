import processing.opengl.*;
import java.util.Hashtable;

import hermes.*;
import hermes.hshape.*;
import hermes.animation.*;
import hermes.physics.*;
import hermes.postoffice.*;

///////////////////////////////////////////////////
// CONSTANTS
///////////////////////////////////////////////////
/**
 * Constants should go up here
 * Making more things constants makes them easier to adjust and play with!
 */
static final int WINDOW_WIDTH = 600;
static final int WINDOW_HEIGHT = 600;
static final int PORT_IN = 8080;
static final int PORT_OUT = 8000; 

World currentWorld;
Camera cam;
PostOffice po;
//PlatformGroup platforms;
Player player;

///////////////////////////////////////////////////
// PAPPLET
///////////////////////////////////////////////////

void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT); 
  Hermes.setPApplet(this);
  po = new PostOffice();
  cam = new Camera();
  currentWorld = new World1(po, cam);       
  currentWorld.start(); // this should be the last line in setup() method
}
<<<<<<< HEAD
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
}
  
=======
>>>>>>> afb1ee524edbbf8dd0549895b26f713940bca96d

void draw() {
  background(230);
  currentWorld.draw();
}

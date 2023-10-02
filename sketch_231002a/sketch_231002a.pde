//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
Boolean nightmode=false; //Note: clock can turn it on automatically
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight
  size( 1000, 600 ); //Landscape
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../imagesUsed/Landscape and Square/desktop-wallpaper-cool-background-that-move-cool-fortnite.jpg");
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
} //End setup
//
void draw() {
  //background(255); //built in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  if (  ) tint (255, 128); //grey scale 1/2 tint
  if (  ) tint (64, 64, 40); //rey scale 1/2  tint (i.e. 128/256=1/2)
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
} //End draw
//
void keyPressed() {} //End keyPressed
//Brightness
//Nightmode, basic control is boolean
//
void mousePressed() {} //End mousePressed
//
// End MAIN Program

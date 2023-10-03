//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
Boolean nightmode=false; //Note: clock can turn it on automatically
Boolean brightnessControl==false;//Note arrows control
int brightnessNumber=255; //range:1-225

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
  if ( brightnessControl==true ) tint (255, brightnessNumber); //grey scale 1/2 tint
 // if ( nightmode==true ) tint (64, 64, 40); //rey scale 1/2  tint (i.e. 128/256=1/2)
  if ( nightmode==true ) { 
    tint (81, 177, 82);
    println(nightmode);
  } else {
    noTint(); //See processing DOC
    println(nightmode);
  }
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
} //End draw
//
void keyPressed() {
//Brightness: ARROWS ACTIVATE BRIGHTNESSCONTROL, NEVER OFF
//NOTE: NIGHTMODE CAN TURN OFF
  if ([Special Keybind]) {//brightness keybind
  brightnessControl==true;
}
//
  if ( key=='n'|| key=='N') { 
  if (nightmode==true) { //Nightmode, basic control is boolean
  nightmode = false;
} else {
  nightmode = true;
  }
}
//
} //End keyPressed
void mousePressed() {} //End mousePressed
//
// End MAIN Program

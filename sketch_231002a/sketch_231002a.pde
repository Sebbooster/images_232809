//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
Boolean nightmode=false; //Note: clock can turn it on automatically
Boolean brightnessControl=false; //Note arrows control
int brightnessNumber=128; //range:1-225

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
  String up = "..";
  String open = "/";
  String imagesPath = up + open;
  String landScapeImage = "ImagesUsed/Landscape and Square/desktop-wallpaper-cool-background-that-move-cool-fortnite.jpg";
  picBackground = loadImage(imagesPath + landScapeImage"../imagesUsed/Landscape and Square/desktop-wallpaper-cool-background-that-move-cool-fortnite.jpg");
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
  if ( brightnessControl==true ) //grey scale 1/2 tint
  if (brightnessNumber<1) { 
    brightnessNumber=1;
} else if (brightnessNumber>255) {
brightnessNumber = 255;
} else {
}
tint (255, brightnessNumber);
println (brightnessNumber);
 // if ( nightmode==true ) tint (64, 64, 40); //rey scale 1/2  tint (i.e. 128/256=1/2)
  if ( nightmode==true ) { 
    tint (81, 177, 82);
    //println(nightmode);
  } else {
    noTint(); //See processing DOC
    //println(nightmode);
  }
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
} //End draw
//
void keyPressed() {
//Brightness: ARROWS ACTIVATE BRIGHTNESSCONTROL, NEVER OFF
//NOTE: NIGHTMODE CAN TURN OFF
  if (key==CODED && keyCode==UP || keyCode==DOWN ) {
  brightnessControl=true;
  if (key==CODED && keyCode==UP) brightnessNumber++ ;
  if (key==CODED && keyCode==DOWN) brightnessNumber-- ;
  //CONTINUE HERE with 
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

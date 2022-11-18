//Global Variables
int appWidth, appHeight;
float topHalfX, topHalfY, topHalfWidth, topHalfHeight;
float bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic, pic2;
//
void setup () {
  size (800, 600);
  //
  appWidth = width;
  appHeight = height;
  //
  //Population
  pic = loadImage("../Images Used/182d9a08f8dc47c5b4a092598577e743.png");
  pic2 = loadImage("../Images Used/dachshund.png");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  topHalfX = appWidth * 1/8;
  topHalfY = appHeight * 2/20;
  topHalfWidth = appWidth * 8/10;
  topHalfHeight = appHeight * 3/20;
  bottomHalfX = topHalfX;
  bottomHalfY = appHeight * 13/20;
  bottomHalfWidth = appWidth * 7/10;
  bottomHalfHeight = appHeight * 3/20;
  //
  //Dimensions for aspect ratio
  int picWidth1 = 729; //pixie landscape
  int picHeight1 = 461;
  int picWidth2 = 400; //dog landscape
  int picHeight2 = 275;
  //
  //Scaling Image size with aspect ratio requires larger dimension
  float smallerDimension1, smallerDimension2, smallerDimension3;
  float largerDimension1, largerDimension2,largerDimension3;
  float imageWidthRatio1=0.0, imageHeightRatio1=0.0;
  float imageWidthRatio2=0.0, imageHeightRatio2=0.0;
  float imageWidthRatio3=0.0, imageHeightRatio3=0.0;
  //
  if ( picWidth1 >= picHeight1 ) { //True if Landscape or Square
    largerDimension1 = picWidth1;
    smallerDimension1 = picHeight1;
    //
    picWidthAdjusted1 = backgroundImageWidth; //from rect() layout
    imageHeightRatio1 = smallerDimension1 / largerDimension1;
    picHeightAdjusted1 = picWidthAdjusted1 * imageHeightRatio1;
  } else { //False if Portrait
    largerDimension1 = picHeight1;
    smallerDimension1 = picWidth1;
    //
    picHeightAdjusted1 = backgroundImageHeight; //from rect() layout
    imageWidthRatio1 = smallerDimension1 / largerDimension1;
    picWidthAdjusted1 = picHeightAdjusted1 * imageWidthRatio1;}
    //
    //Rectangular Layout and Image Drawing to CANVAS
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( topHalfX, topHalfY, topHalfWidth, topHalfHeight ); //Top Half
  rect( bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight ); //Bottom half
}
//
void draw() {}
//
void keyPressed() {}
//
void mousePressed() {}

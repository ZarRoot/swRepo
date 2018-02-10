float middleX, middleY;
float yinSize, yinX, yinY;
float yangSize, yangX, yangY;
float innerSize;

void setup(){
 size(600, 600);
 background(195);
 
 middleX = width/2;
 middleY = height/2;
 
 //Yin -> black with white dot
 yinSize = 200; 
 yinX = width/2;
 yinY = middleY+yinSize;

//Yang -> white with black dot 
 yangSize = 200; 
 yangX = width/2;
 yangY = yangSize;
 
 innerSize = 30;
}

// yin-yang cicles to create itself
//inner circles grow and then cicle in making trails
//black takes over center
//turns into a speaker that bumps
// pulses out circlular soundwaves as circles



void draw(){
   //Yin -> black with white dot
   fill(0); //white
   stroke(0);
   ellipse(yinX, yinY, yinSize, yinSize);
   fill(255);
   stroke(255);
   ellipse(yinX, yinY, innerSize, innerSize);
  
   /* WOORRRKING
   yinX -=cos(0)*200;
   yinY += sin(0)*200;
   */
   
   println(yinX + " : " + yinY);
   
   fill(255); //black
   stroke(255);
   ellipse(yangX, yangY, yangSize, yangSize);
   fill(0);
   stroke(0);
   ellipse(yangX, yangY, innerSize, innerSize);
   
  
}
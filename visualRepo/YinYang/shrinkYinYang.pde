float middleX, middleY;
float yinSize, yinX, yinY;
float yangSize, yangX, yangY;
float angle;
float innerSize;
int acc;
boolean stop;

void setup(){
 size(600, 600);
 background(110);
 
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
 
 innerSize = 40;
 
 acc = 0;
 stop = false;
}

// yin-yang cicles to create itself
//inner circles grow and then cicle in making trails
//black takes over center
//turns into a speaker that bumps
// pulses out circlular soundwaves as circles


//The good is your innocent start with the light
//as darkness touches you it begins to spread
//it takes over and then eventually the light fights
//back to return the light
void draw(){
  
   yinX = cos(angle)*yinSize/2 +middleX;
   yinY = sin(angle)*yinSize/2 + middleY;
  
   yangX = cos(angle*.95)*yangSize/2 + middleX;
   yangY = sin(angle*.95)*yangSize/2 + middleY;

  //Yin -> black with white dot
   fill(0); //white
   stroke((int)0+angle*10);
   ellipse(yinX, yinY, yinSize, yinSize);
   fill(255);
   stroke(255);
   ellipse(yinX, yinY, innerSize, innerSize);
  
   if(stop == false){
     angle += 0.05;
   }
   fill(255); //black
   //stroke(355)
   stroke((int)255 - angle*10); //adds trail behind it
   ellipse(yangX, yangY, yangSize, yangSize);
   fill(0);
   stroke(0);
   ellipse(yangX, yangY, innerSize, innerSize);

  //innerSize %= 50 + 30
   
   yinSize = yinSize - 1; //shrinks and grows 
   yangSize = yangSize - 1;
}
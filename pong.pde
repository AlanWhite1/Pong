int time=0;
int base=20;
int base1=840;
int x,y,gameScore=0;
int changeX=-20;
int changeY=-20;
int gameOver=0;
void setup()
{
  size(1440, 840);
  time= millis();
  x=(int)random(width);
  y=height-base;
}
void draw()
{
  if(gameOver==0)
  {
    
    time= millis()/1000;
    
  background(0);
  textSize(20);
  text(time, width/15, height/2);
  text("TIME:", width/50, height/2);
  text("SCORE:"+gameScore+"",width/2,height/2);
  rect(mouseX,height-base,200,base);
  rect(x-100, height-base1,200,base);
 fill(5, 200, 255);
  ellipse(x,y,20,20);
  x=x+changeX;
  y=y+changeY;
  if(x<0 | x>width)
  {
    changeX=-changeX;
  }
  if(y<0)
  {
    changeY=-changeY;
  }
  if(y>height-base)
  {
    
    if(x>mouseX && x<mouseX+200)
    
    {
      changeY=-changeY; 
      gameScore++;
    }
    else
    {
      gameOverSplash();
    }
  }
  }
  else
  {
    background(0);
    text("GAME OVER!",width/2,height/2);
    
  }
}
void gameOverSplash()
{
  gameOver=1;
}
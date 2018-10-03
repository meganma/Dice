
  void setup()
  {
      noLoop();
      size(420,500);  
  }
  
  void draw()
  {   int totalRoll=0;
      background(197);
      
      for(int x=0;x<=400;x=x+30){
        for(int y=0;y<=400;y=y+30){
            Die bob=new Die(x,y);
            bob.show();
            totalRoll+=bob.roll;
            
        }
      }
      textAlign(CENTER);

      text( "The sum of these dice is " + totalRoll, 300, 450);

      
      
  }
  void mousePressed()
  {
      redraw();

  }
  class Die 
  {
      //variable declarations
      int myX, myY,roll;
      Die(int x, int y) 
      {
          //variable initializations
          myX=x;
          myY=y;
          roll=(int)((Math.random()*6)+1);
         
      }
      
      
      void show()
      {
       
        fill(255);
        rect(myX,myY,30,30);
        
        if(roll==1){
            fill(0);
            ellipse(myX+15,myY+15,5,5);
        }else if(roll==2){
            fill(0);
            ellipse(myX+10,myY+10,5,5);
            ellipse(myX+20,myY+20,5,5);
        }else if(roll==3){
            fill(0);
            ellipse(myX+8,myY+8,5,5);
            ellipse(myX+15,myY+15,5,5);
            ellipse(myX+22,myY+22,5,5);
        }else if(roll==4){
            fill(0);
            ellipse(myX+8,myY+8,5,5);
            ellipse(myX+8,myY+22,5,5);
            ellipse(myX+22,myY+8,5,5);
            ellipse(myX+22,myY+22,5,5);
        }else if(roll==5){
            fill(0);
            ellipse(myX+8,myY+8,5,5);
            ellipse(myX+8,myY+22,5,5);
            ellipse(myX+22,myY+8,5,5);
            ellipse(myX+22,myY+22,5,5);
            ellipse(myX+15,myY+15,5,5);
        }else{
            fill(0);
            ellipse(myX+8,myY+6.5,5,5);
            ellipse(myX+8,myY+15,5,5);
            ellipse(myX+8,myY+23.5,5,5);
            ellipse(myX+22,myY+6.5,5,5);
            ellipse(myX+22,myY+15,5,5);
            ellipse(myX+22,myY+23.5,5,5);
        }
 
      
      
      }
  }

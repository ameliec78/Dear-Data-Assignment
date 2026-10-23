class Vinyl
{
  float x1, y1;
  float diameter1;
  color colour1;
  
  float diameter2;
  color colour2;
  
  float diameter3;
  
  float diameter4;
  float diameter5; 
  float diameter6;

  Vinyl()
  {
    x1 = 100;
    y1 = 100;
    diameter1 = 100;
    colour1 = color(#171717);
    
    diameter2 = 35;
    colour2 = color(#A01010);
    
    diameter3 = 7;
    
    diameter4 = 55;
    diameter5 = 70;
    diameter6 = 85;
     
  }
    void draw()
    {
      noStroke();
      fill(colour1);
      circle(x1, y1, diameter1);
      
      noStroke();
      fill(colour2);
      circle(x1, y1, diameter2);
      
      noStroke();
      fill(254, 244, 232);
      circle(x1, y1, diameter3);
      
      stroke(#6F6F6F, 80);
      noFill();
      circle(x1, y1, diameter4);
      
      stroke(#6F6F6F, 80);
      noFill();
      circle(x1, y1, diameter5);
      
      stroke(#6F6F6F, 80);
      noFill();
      circle(x1, y1, diameter6);
    }
  }

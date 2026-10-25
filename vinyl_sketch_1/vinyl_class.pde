class Vinyl
{
  float x, y;
  float diameter1;
  color colour1;

  float diameter2;
  color colour2;

  float diameter3;

  float arcDiameter4, arcDiameter5, arcDiameter6;

  float angle = 0;
  float rotationSpeed = 0.09;

  Vinyl()
  {

    x = 100;
    y = 100;

    diameter1 = 100;
    colour1 = color(#171717);

    diameter2 = 35;
    colour2 = color(#A01010);

    diameter3 = 7;

    arcDiameter4 = 55;
    arcDiameter5 = 70;
    arcDiameter6 = 85;
  }
  
  void draw()
  {
    pushMatrix();
    
    translate(x, y);
    rotate(angle);
    
    noStroke();
    fill(colour1);
    circle(0, 0, diameter1);

    noStroke();
    fill(colour2);
    circle(0, 0, diameter2);

    noStroke();
    fill(254, 244, 232);
    circle(0, 0, diameter3);

    stroke(#6F6F6F, 80);
    noFill();
    arc(0, 0, arcDiameter4, arcDiameter4, PI, PI+HALF_PI);
    arc(0, 0, arcDiameter5, arcDiameter5, PI, PI+HALF_PI);
    arc(0, 0, arcDiameter6, arcDiameter6, PI, PI+HALF_PI);

    arc(0, 0, arcDiameter4, arcDiameter4, 0, HALF_PI);
    arc(0, 0, arcDiameter5, arcDiameter5, 0, HALF_PI);
    arc(0, 0, arcDiameter6, arcDiameter6, 0, HALF_PI);
    
    angle += rotationSpeed;
    
    popMatrix();
    
  }
}

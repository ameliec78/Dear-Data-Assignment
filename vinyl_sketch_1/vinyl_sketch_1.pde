Vinyl[] myVinyls = new Vinyl[25];

int cols, rows;

void setup()
{
  size(800, 800);
  
  cols = 5;
  rows = 5;
  
  float xSpacing = width / cols;
  float ySpacing = height / rows;
  
  for (int i = 0; i < myVinyls.length; i++) {
    myVinyls[i] = new Vinyl();

    myVinyls[i].x = random(50, 750);
    myVinyls[i].y = random(50, 750);

    myVinyls[i].rotationSpeed = random(0.01, 0.1);
  }
}

void draw()
{
  background(254, 244, 232);

  for (int i = 0; i < myVinyls.length; i++) {
    myVinyls[i].draw();
  }
}

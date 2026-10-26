class Vinyl
{
  float x, y;

  String date;
  String genre;
  int minutes, streams, artists, albums;


  float diameter1;
  color colour1;

  float diameter2;

  float diameter3;

  float arcDiameter4, arcDiameter5, arcDiameter6;

  float angle = 0;
  float rotationSpeed;
  float streamArcLength, artistArcLength, albumArcLength;
  color genreColour;

  Vinyl(String d, int m, int s, int art, int alb, String g)
  {
    date = d;
    minutes = m;
    streams = s;
    artists = art;
    albums = alb;
    genre = g;

    x = 100;
    y = 100;

    //main part of vinyl
    diameter1 = 100;
    colour1 = color(#171717);

    //colour strip on vinyl
    diameter2 = 35;

    //centre hole of vinyl
    diameter3 = 7;

    arcDiameter4 = 55;
    arcDiameter5 = 70;
    arcDiameter6 = 85;

    //mapping data
    rotationSpeed = map(minutes, 0, 200, 0.01, 0.3);
    streamArcLength = map(streams, 0, 50, 0, HALF_PI * 1.5);
    artistArcLength = map(artists, 0, 20, 0, HALF_PI * 1.5);
    albumArcLength = map(albums, 0, 20, 0, HALF_PI * 1.5);

    //mapping the colour
    if (genre.equals("alternative")) {
      genreColour = color(#79B4FA);
    } else if (genre.equals("hyperpop")) {
      genreColour = color(#5FE57D);
    } else if (genre.equals("pop")) {
      genreColour = color(#F787F7);
    } else if (genre.equals("rock")) {
      genreColour = color(#B471ED);
    }
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
    fill(genreColour);
    circle(0, 0, diameter2);

    noStroke();
    fill(254, 244, 232);
    circle(0, 0, diameter3);

    stroke(#CBC9C9, 80);
    noFill();
    arc(0, 0, arcDiameter4, arcDiameter4, PI, PI + albumArcLength);
    arc(0, 0, arcDiameter5, arcDiameter5, PI, PI + artistArcLength);
    arc(0, 0, arcDiameter6, arcDiameter6, PI, PI + streamArcLength);

    arc(0, 0, arcDiameter4, arcDiameter4, 0, albumArcLength);
    arc(0, 0, arcDiameter5, arcDiameter5, 0, artistArcLength);
    arc(0, 0, arcDiameter6, arcDiameter6, 0, streamArcLength);

    angle += rotationSpeed;

    popMatrix();
  }
}

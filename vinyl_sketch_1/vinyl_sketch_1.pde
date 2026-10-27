Vinyl[] myVinyls;
int cols, rows;
float xSpacing, ySpacing;

void setup()
{
  size(1200, 800);
  Table table = loadTable("music-statistics.csv", "header");
  myVinyls = new Vinyl[table.getRowCount()];

  cols = ceil(sqrt(myVinyls.length));
  rows = ceil(myVinyls.length / cols);

  xSpacing = width / cols;
  ySpacing = height / rows;

  for (int i = 0; i < myVinyls.length; i++) {

    TableRow row = table.getRow(i);
    String date = row.getString("Date");
    int minutes = row.getInt("Minutes");
    int streams = row.getInt("Streams");
    int artists = row.getInt("Artists");
    int albums = row.getInt("Albums");
    String genre = row.getString("Genre");

    myVinyls[i] = new Vinyl(date, minutes, streams, artists, albums, genre);

    int col = i % cols;
    int rowNum = i / cols;

    myVinyls[i].x = (col * xSpacing) + (xSpacing / 2);
    myVinyls[i].y = (rowNum * ySpacing) + (ySpacing / 2);
  }
}

void draw()
{
  background(254, 244, 232);

  for (int i = 0; i < myVinyls.length; i++) {
    myVinyls[i].draw();
  }

  for (int i=0; i < myVinyls.length; i++) {
    myVinyls[i].drawPopup();
  }

}

  void mousePressed() {
    for (int i=0; i < myVinyls.length; i++) {
      myVinyls[i].checkClick();
    }
  }

 Circle[] circles = new Circle[9000];
int i = 0;

String imageName = "test.jpg";
PImage image;

void setup() {
   size(1200, 600);
   image = loadImage(imageName);
   circles[i++] = new Circle();
   noStroke();
}

void draw() {
   background(0);
   for (Circle circle : circles) {
       if (circle != null){
           circle.show();
           circle.grow();
       }
   }
   for (int j = 0; j < 100; j++) {if (i < circles.length) circles[i++] = new Circle();}
   if (i == circles.length) {println("Finished"); noLoop();}
}

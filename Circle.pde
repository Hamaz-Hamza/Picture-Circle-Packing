class Circle {
    float x,y,r;
    color c;
    boolean grow = true;
    
    Circle() {
        x = random(width);
        y = random(height);
        c = image.pixels[int(x) + int(y) * image.width];
        for (int i = 0; i < 1; i++) 
            for (Circle circle : circles) 
                if (circle != null && circle != this && collidesWith(circle)) { 
                    x = random(width);
                    y = random(height);
                    c = image.pixels[int(x) + int(y) * image.width];
                    i = -1;
                }
    }
    
    void show(){ fill(c); circle(x,y,r*2); }
    
    void grow(){
        if (grow){
            for (Circle circle : circles) if (circle != null && circle != this && collidesWith(circle)) grow = false;
            if (touchedEdge()) grow = false;
            if (grow) r++;
        }
    }
    
    boolean touchedEdge(){ return (x-r <= 0 || x+r >= width || y-r <= 0 || y+r >= height); }
    
    boolean collidesWith(Circle circle){ return dist(x,y,circle.x,circle.y) <= r + circle.r;}
}

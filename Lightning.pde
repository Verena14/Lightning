int startX1 = 400;
int startY1 = 400;
int startX2 = 400;
int startY2 = 400;
int endX1 = 0;
int endY1 = 0;
int endX2 = 0;
int endY2 = 0;
int x = 0;
int random1;
int random2;
int r = 255;
int g = 0;
int b = 0;
int z = 1;

void setup()
{
  size(800,800);
  strokeWeight(1);
  background(0);
}
void draw()
{
  if(z == 1)
  {
    stroke(r, g, b);
    while(true){
      random1 = (int)(Math.random()*100);
      random2 = (int)(Math.random()*100);
      if(endX1 <= 800 && endY1 >= 0)
      {
        endX1 = startX1 + random1;
        endY1 = startY1 - random2;
        endX2 = startX2 - random1;
        endY2 = startY2 + random2;
        line(startX1, startY1, endX1, endY1);
        line(startX1, startY2, endX1, endY2);
        line(startX2, startY1, endX2, endY1);
        line(startX2, startY2, endX2, endY2);
        startX1 = endX1;
        startY1 = endY1;
        startX2 = endX2;
        startY2 = endY2;
      }
      else{
        if(r == 255 && g == 0 && b < 255){
          b += 15;
        }else if(r > 0 && g == 0 && b == 255){
          r -= 15;
        }else if(r == 0 && g < 255 && b == 255){
          g += 15;
        }else if(r == 0 && g == 255 && b > 0){
          b -= 15;
        }else if(r < 255 && g == 255 && b == 0){
          r += 15;
        }else if(r == 255 && g > 0 && b == 0){
          g -= 15;
        }
        break;
      }
    }
    startX1 = 400;
    startY1 = 400;
    startX2 = 400;
    startY2 = 400;
    endX1 = 0;
    endY1 = 0;
    endX2 = 0;
    endY2 = 0;
    x++;
    if(x >= 9999999){
      noLoop();
    }
  }
}
void mousePressed()
{
  z *= -1;
  x = 0;
  /*System.out.println(r);
  System.out.println(g);
  System.out.println(b);
  if(r == 255 && g == 0 && b < 255){
    b += 15;
  }else if(r > 0 && g == 0 && b == 255){
    r -= 15;
  }else if(r == 0 && g < 255 && b == 255){
    g += 15;
  }else if(r == 0 && g == 255 && b > 0){
    b -= 15;
  }else if(r < 255 && g == 255 && b == 0){
    r += 15;
  }else if(r == 255 && g > 0 && b == 0){
    g -= 15;
  }
  startX1 = 400;
  startY1 = 400;
  startX2 = 400;
  startY2 = 400;
  endX1 = 0;
  endY1 = 0;
  endX2 = 0;
  endY2 = 0;*/
}

class Flash {

  int threshold = 254;
  PImage penlayer;
  PImage message;

  void flashSetup() {
    message = loadImage("babo.png");
    penlayer = createImage(320, 240, ARGB);
    cam.start();
  }



  void draw() {
    //background(0);
    if (cam.available()) { 
      cam.read();
      flip(cam);
    }

    //image(cam, 0, 0);
    image(message, 500, 150, 700, 700);
    image(penlayer, 468, 132, 850, 740);
    //image(message, 500, 150, 320, 240);
    //image(penlayer, 500, 150, 320, 240);


    if (mousePressed == true) {
      //threshold = mouseY;
      for (int i=0; i<penlayer.pixels.length; i++) {
        penlayer.pixels[i] = color(0, 0, 0, 0);
      }
      penlayer.updatePixels();
    }

    for (int x = 0; x < cam.width; x++) {
      for (int y = 0; y < cam.height; y++) {
        color pixelColor = cam.pixels[y*cam.width + x];
        //float redity = red(pixelColor) - (green(pixelColor) + blue(pixelColor))/2; //dgree of red
        float bright= brightness(pixelColor);
        if (bright > threshold) {
          //penlayer.pixels[y*cam.width + x] = cam.pixels[y*cam.width + x];
          penlayer.pixels[y*cam.width + x] = color(0, 0, 0, 0);
        } else { 
          penlayer.pixels[y*cam.width + x] = color(0, 0, 0, 250);
        }
      }
    }
    penlayer.updatePixels();
  }

  void flip(PImage cam) {
    PImage buffer = new PImage(cam.width, cam.height);
    for (int i=0; i<cam.pixels.length; i++) {
      buffer.pixels[i] = cam.pixels[i];
    }
    for (int x=0; x<cam.width; x++) {
      for (int y=0; y<cam.height; y++) {
        cam.pixels[y*cam.width+x] = buffer.pixels[y*cam.width+(cam.width-x-1)];
      }
    }
  }
}

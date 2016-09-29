int offset_range = 600;


int nb_images = 9;
PImage imgs[] = new PImage[nb_images];


void settings() {
    size(600+offset_range, 234+offset_range, P2D);    // initialize frame
}


void setup() {
    for (int i = 0; i < nb_images; i++)
        imgs[i] = loadImage("layer" + i + ".png");

    drawPattern();
}


void mousePressed() {
    drawPattern();
}


void drawPattern() {
    background(255); // clean screen

    for (int i = 0; i < nb_images; i++)
        image(imgs[i], getRandomOffset(), getRandomOffset());
}

int getRandomOffset() {
    return int(random(offset_range));
}


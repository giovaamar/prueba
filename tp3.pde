PImage portada;
int cant = 16;
PImage [] fondosDePantallas = new PImage [cant];
int pagina = 0;
int elegir = 0;
int paraAvanzar = 0;

void setup () {
  size(600, 600);
}


void draw () {
  background (255);

  pantalla (pagina);

  if (pagina == 2) {
    paraAvanzar = 1;
  } else if (pagina == 9) {
    paraAvanzar = 1;
  } else if (pagina == 12) {
    paraAvanzar = 1;
  }
}

void mouseClicked () {
  if (mouseX > 230 && mouseX < 370 && mouseY > 255 && mouseY < 290) {
    pagina = 1;
  } else if (mouseX > 230 && mouseX < 370 && mouseY > 310 && mouseY < 345) {
    pagina = 28;
  }

  if (mouseX >= 500 && mouseX <= 580 && mouseY >= 565 && mouseY <= 590) {
    if (pagina == 2) {
      pagina = 17;
    } else if (pagina == 19) {
      pagina = 6;
    } else if (pagina == 9) {
      pagina = 20;
    } else if (pagina == 12) {
      pagina = 24;
    } else {
      pagina ++;
      paraAvanzar = 0;
    }
  }
  
  if (mouseX >= 400 && mouseX <= 580 && mouseY >= 465 && mouseY <= 590 && paraAvanzar == 1) {
    if (pagina == 2){
      pagina++;
      paraAvanzar = 0;
    } else if (pagina == 9){
      pagina++;
      paraAvanzar = 0;
    } else if (pagina == 12){
      pagina++;
      paraAvanzar = 0; 
    }
  }
}

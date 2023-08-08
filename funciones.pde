String [] lineas;


void pantalla (int num) {

  // fondos //
  for (int i=0; i<cant; i++) {
    fondosDePantallas[i] = loadImage("fondos" + i + ".png");
  }

  if (num != 0) {
    image(fondosDePantallas[num], 0, 150, 600, 450);
  } else {
    image(fondosDePantallas[num], 0, 0, 600, 600);
  }

  // textos //

  fill (0);
  textSize (12);
  lineas = loadStrings ("textos" + num + ".txt");

  if (num != 0) {
    for (int i=0; i<lineas.length; i++) {
      text(lineas[i], 15, i * 16 + 20);
    }
  } else {
    for (int i=0; i<lineas.length; i++) {
      text(lineas[i], 20, i * 20 + 200);
    }
  }

  // botones //
  if (num != 0) {
    rect (500, 565, 80, 25);
    if (paraAvanzar == 1) {
    rect (400, 565, 80, 25);
    }
    fill (0);
    text ("siguiente", 513, 583);
  } else if (num == 0) {
    stroke(158, 165, 198);
    fill(36, 45, 93);
    rect(230, 255, 140, 35);
    rect(230, 310, 140, 35);
    textSize(18);
    fill(158, 165, 198);
    text("iniciar", 276, 277);
    text("créditos", 270, 332);
  }
}

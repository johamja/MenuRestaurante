import 'package:flutter/cupertino.dart';

import '../Producto.dart';

class Plato_fuerte extends Producto {
  Plato_fuerte(super.Nombre, super.Precio, super.Descripcion, super.Imagen);
}

List<Producto> menuDefaultPlatoFuerte() {
  return [
    Plato_fuerte(
        'Pollo San Carbón',
        52000.5,
        'Jugoso contramuslo marinado en cerveza y especias seleccionadas, con el auténtico sabor de las brasas.',
        Image.asset('assets/platoFuerte/1.jpg')),
    Plato_fuerte(
        'Róbalo basílico',
        32000,
        'Filete de róbalo al papillote con salsa napolitana, coronado con puerros fritos.',
        Image.asset('assets/platoFuerte/2.jpg')),
    Plato_fuerte(
        'Mixto con Pasta',
        63000,
        'Elige entre solomito San Carbón o salmón en finas hierbas, acompañado con fettuccini o penne en salsa de quesos, pomodoro, primavera o funghi.',
        Image.asset('assets/platoFuerte/3.jpg'))
  ];
}

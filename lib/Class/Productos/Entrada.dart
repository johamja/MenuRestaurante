import 'package:flutter/cupertino.dart';
import '../Producto.dart';

class Entrada extends Producto {
  Entrada(super.Nombre, super.Precio, super.Descripcion, super.Image);
}

List<Producto> menuDefaultEntradas() {
  return [
    Entrada('Cremas', 24000, 'Pollo, tomate y champiñones.',
        Image.asset('assets/Entrada/1.jpg')),
    Entrada(
        'Carpaccio 4 Pimientas',
        34000,
        'Finas lonjas de res con aceite de oliva y vinagre balsámico, coronadas con queso parmesano y mezclun.',
        Image.asset('assets/Entrada/2.jpg')),
    Entrada(
        'Ensalada de Ananá',
        43200,
        'Combinación de vegetales y hortalizas, acompañado de suprema de pollo, huevo cocido, panceta de cerdo y tostones de la casa con dressing cesar.',
        Image.asset('assets/Entrada/3.jpg')),
  ];
}

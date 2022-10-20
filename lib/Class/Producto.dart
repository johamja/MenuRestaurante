import 'package:flutter/cupertino.dart';

class Producto {

  // Propiedades
  late String _Nombre;
  late double _Precio;
  late String _Descripcion;
  late Image _Imagen;


  Image get Imagen => _Imagen;
  set Imagen(Image value) {
    _Imagen = value;
  }

  String get Nombre => _Nombre;
  set Nombre(String value) {
    _Nombre = value;
  }


  double get Precio => _Precio;
  set Precio(double value) {
    _Precio = value;
  }


  String get Descripcion => _Descripcion;
  set Descripcion(String value) {
    _Descripcion = value;
  }

  Producto(this._Nombre, this._Precio, this._Descripcion,this._Imagen);

// Get y Set

}
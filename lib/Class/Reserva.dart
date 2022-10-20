import 'package:flutter/cupertino.dart';
import 'package:proyecto_guia/Class/Cliente.dart';
import 'package:proyecto_guia/Class/Producto.dart';

import 'Productos/Plato_fuerte.dart';

Cliente amanda = Cliente(
    'Amanda Muerillo R',
    'Amanadamur21@gmail.com',
    'calle 47 #21-32, barrio el mirador ',
    1004598534,
    Image.asset('assets/user.jpg'),
    3008034567,
    'cedula');
Reserva _reservasinusuario = Reserva([], [], amanda);

class Reserva {
  late List<Producto> _ListaProductos;
  late List<int> _cantidad;
  late Cliente _cliente;

  // Metodos Get y Set
  List<Producto> get ListaProductos => _ListaProductos;
  set ListaProductos(List<Producto> value) {
    _ListaProductos = value;
  }

  List<int> get cantidad => _cantidad;
  set cantidad(List<int> value) {
    _cantidad = value;
  }

  Cliente get cliente => _cliente;
  // modificar el cliente no es opcional

  // contructor de la reserva
  Reserva(this._ListaProductos, this._cantidad, this._cliente);
}

Reserva getreservaconusuario() {
  return _reservasinusuario;
}

Reserva setreservaconusuario(Reserva value) {
  return _reservasinusuario = value;
}

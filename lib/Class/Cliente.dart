import 'package:flutter/cupertino.dart';

late Cliente _clienteInicial;

class Cliente {
  late String _Nombre;
  late String _Direccion;
  late String _Correo;
  late int _Telefono;
  late Image _Imagen;
  late String _TipoDocumento;
  late int _Documento;
  // opvional el metodo de pago aun no definido

  // metodos Get y Set
  String get Nombre => _Nombre;
  set Nombre(String value) {
    _Nombre = value;
  }

  String get Direccion => _Direccion;
  set Direccion(String value) {
    _Direccion = value;
  }

  String get Correo => _Correo;
  set Correo(String value) {
    _Correo = value;
  }

  int get Telefono => _Telefono;
  set Telefono(int value) {
    _Telefono = value;
  }

  Image get Imagen => _Imagen;
  set Imagen(Image value) {
    _Imagen = value;
  }

  String get TipoDocumento => _TipoDocumento;
  set TipoDocumento(String value) {
    _TipoDocumento = value;
  }

  int get Documento => _Documento;
  set Documento(int value) {
    _Documento = value;
  }

  // contructor de la clase Cliente
  Cliente(this._Nombre, this._Correo, this._Direccion, this._Documento,
      this._Imagen, this._Telefono, this._TipoDocumento);
}

Cliente clientePredeterminado() {
  return _clienteInicial;
}

Cliente InicoDeCliente(Cliente value) {
  return _clienteInicial = value;
}

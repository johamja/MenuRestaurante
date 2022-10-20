import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_guia/Class/Productos/Entrada.dart';

import '../../Class/Producto.dart';
import '../../Class/Productos/Plato_fuerte.dart';
import '../../Widgets/wcWidgets.dart';

class Inicio extends StatelessWidget {
  Inicio({Key? key}) : super(key: key);
  final List<Producto> _list = menuDefaultEntradas();
  final List<Producto> _list2 = menuDefaultPlatoFuerte();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // imagen de buenvenida o cart
        Container(
          margin: EdgeInsets.all(16),
          child: _txt1(
              'Bienvenido al menu de nuestro restaurante', Colors.black54),
        ),
        Container(
          margin: EdgeInsets.all(16),
          child: _txt3(
              'Mira donde nos ubicados, para que disfrutes de nuestro sabor y de una experiencia inolvidable',
              Colors.black45),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 140, 0, 255),
                  Color.fromARGB(255, 0, 195, 255)
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  _txt2('Ubicanos por la plaza de botero', Colors.black),
                  _txt2('Calle 23 #56-23', Colors.black),
                  SizedBox(
                    height: 15,
                  ),
                  largeButton(() {}, Color.fromARGB(157, 255, 255, 255),
                      'Ubicacion maps')
                ],
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      image: AssetImage('assets/restaurante.jpg'),
                      height: 150,
                      width: 100,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        cartabuilder_Menu(_list, 'Entradas', 400,
            Color.fromARGB(255, 39, 161, 135), const Color(0xffffffff)),
        cartabuilder_Menu(_list2, 'De la parrilla', 500,
            const Color(0xfff9ce56), const Color(0xffffffff)),
        cartabuilder_Menu(_list, 'Plato Principal', 500,
            const Color(0xffc465bc), const Color(0xffffffff)),
      ],
    );
  }
}

Spacer _spa(int value) {
  return Spacer(
    flex: value,
  );
}

Text _txt1(String texto, Color color) {
  return Text(
    textAlign: TextAlign.center,
    texto,
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}

Text _txt2(String texto, Color color) {
  return Text(
    texto,
    style: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}

Text _txt3(String texto, Color color) {
  return Text(
    textAlign: TextAlign.center,
    texto,
    style: TextStyle(
      fontSize: 12,
      color: color,
    ),
  );
}

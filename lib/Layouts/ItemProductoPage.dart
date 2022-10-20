import 'package:flutter/material.dart';
import 'package:proyecto_guia/Class/Reserva.dart';
import 'package:proyecto_guia/Layouts/HomePage.dart';
import 'package:proyecto_guia/Widgets/wcWidgets.dart';

import '../Class/Producto.dart';

class ItemProducPage extends StatelessWidget {
  late Producto itemproducto;
  late Color colordeplantilla;
  late Color textoColor;
  ItemProducPage(
      {Key? key,
      required this.itemproducto,
      required this.colordeplantilla,
      required this.textoColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Colors.transparent,
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: colordeplantilla,
          appBar: AppBar(
            backgroundColor: colordeplantilla,
            title: Text('Producto'),
          ),
          body: Center(
            child: Container(
              margin: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
              child: Column(
                children: [
                  _spa(1),
                  _txt1(itemproducto.Nombre, textoColor),
                  _spa(2),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: itemproducto.Imagen.image,
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  _spa(1),
                  _txt2('Tu producto selecionado tiene la siguiente descripcio',
                      textoColor),
                  _spa(1),
                  _txt3(itemproducto.Descripcion, textoColor),
                  _spa(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _txt2('Precio unitario', textoColor),
                      _txt1('${(itemproducto.Precio.toString())} ', textoColor)
                    ],
                  ),
                  _spa(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _lgb(() {}, colordeplantilla, '-', textoColor),
                      Text('1'),
                      _lgb(() {}, colordeplantilla, '+', textoColor),
                    ],
                  ),
                  _spa(2),
                  largeButton(() {
                    Navigator.pop(context);
                    getreservaconusuario().ListaProductos.add(itemproducto);
                    getreservaconusuario().cantidad.add(1);

                  }, colordeplantilla, 'Añadir al carrito'),
                  _spa(2),
                ],
              ),
            ),
          ),
        ));
  }
}

Spacer _spa(int value) {
  return Spacer(
    flex: value,
  );
}

Text _txt1(String texto, Color color) {
  return Text(
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
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}

Text _txt3(String texto, Color color) {
  return Text(
    texto,
    style: TextStyle(
      fontSize: 15,
      color: color,
    ),
  );
}

GestureDetector _lgb(
    VoidCallback function, Color bgColor, String text, Color txeto) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 60,
      height: 40,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
          )),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 40, color: txeto),
        ),
      ),
    ),
  );
}

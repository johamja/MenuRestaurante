import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:proyecto_guia/Class/Cliente.dart';
import 'package:proyecto_guia/Class/Reserva.dart';
import 'package:proyecto_guia/Layouts/ItemProductoPage.dart';
import '../Class/Producto.dart';

GestureDetector largeButton(VoidCallback function, Color bgColor, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 230,
      height: 45,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1,
          )),
      child: Center(
        child: Text(text),
      ),
    ),
  );
}

GestureDetector boton_interfas(
    VoidCallback function,
    Color bgColor,
    String text,
    double txtaltura,
    double altura,
    double anchura,
    double pading) {
  return GestureDetector(
    onTap: function,
    child: Container(
      margin: EdgeInsets.only(left: pading, right: pading),
      width: anchura,
      height: altura,
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(100, 0, 0, 0),
            offset: Offset(1.5, 1.5),
            blurRadius: 3,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: txtaltura),
        ),
      ),
    ),
  );
}

Text titleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
  );
}

Text subTitleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w300,
    ),
    textAlign: TextAlign.center,
  );
}

SizedBox inTextSB(String text) {
  return SizedBox(
    width: 180,
    child: TextField(
      decoration: InputDecoration(
        hintText: text,
      ),
    ),
  );
}

GestureDetector textLink(VoidCallback function, String text) {
  return GestureDetector(
    onTap: function,
    child: Center(
      child: Text(text),
    ),
  );
}

Container cartabuilder_Menu(List<Producto> produc, String title, double altura,
    Color color, Color txcolor) {
  return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
          boxShadow: [
            BoxShadow(
              color: color,
              offset: Offset(4, 4),
              blurRadius: 20,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: txcolor,
              )),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(15),
              itemCount: produc.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Ventana flotante de cada producto selecionado en la lista ListView.Builder

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemProducPage(
                                  itemproducto: produc[index],
                                  colordeplantilla: color,
                                  textoColor: txcolor,
                                )));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 0,
                            child: Text(produc[index].Nombre,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: txcolor,
                                )),
                          ),
                          const Expanded(
                              flex: 0,
                              child: SizedBox(
                                width: 30,
                              )),
                          Expanded(
                            flex: 0,
                            child: Row(
                              children: [
                                Text(
                                  "Precio ",
                                  style: TextStyle(
                                    color: txcolor,
                                    fontSize: 10,
                                  ),
                                ),
                                Text(produc[index].Precio.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: txcolor,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(produc[index].Descripcion,
                          style: TextStyle(
                            fontSize: 12,
                            color: txcolor,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                );
              }),
          const SizedBox(
            height: 20,
          ),
        ],
      ));
}

Container car_promociones(String promocion, Producto produc, double desciento,
    Color color, Color txcolor) {
  return Container(
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(30),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color,
          offset: Offset(4, 4),
          blurRadius: 20,
        )
      ],
      borderRadius: BorderRadius.circular(15),
      color: color,
    ),
    child: Row(
      children: [
        Expanded(
            child: Text(
          '${(desciento.round().toString())}%',
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        )),
        Expanded(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText(promocion),
              const SizedBox(
                height: 15,
              ),
              subTitleText('Producto'),
              const SizedBox(
                height: 15,
              ),
              Text(produc.Nombre),
              Text(produc.Precio.toString()),
              Text(produc.Descripcion)
            ],
          ),
        ))
      ],
    ),
  );
}

Container car_promociones2(
    String promocion, double desciento, Color color, Color txcolor) {
  return Container(
    margin: EdgeInsets.all(20),
    padding: EdgeInsets.all(30),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: color,
          offset: Offset(4, 4),
          blurRadius: 20,
        )
      ],
      borderRadius: BorderRadius.circular(15),
      color: color,
    ),
    child: Row(
      children: [
        Expanded(
            child: Text(
          '${(desciento.round().toString())}%',
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        )),
        Expanded(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText(promocion),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ))
      ],
    ),
  );
}

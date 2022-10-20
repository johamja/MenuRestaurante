import 'package:flutter/material.dart';
import 'package:proyecto_guia/Class/Reserva.dart';

class Pedidos extends StatelessWidget {
  Pedidos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          _txt1('Lista de pedidios', Colors.black),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                    itemCount: getreservaconusuario().ListaProductos.length,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(15),
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: EdgeInsets.all(6),
                        padding: EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                          left: 10,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 243, 243, 243),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                _txt2(
                                    getreservaconusuario()
                                        .ListaProductos[index]
                                        .Nombre,
                                    Colors.black),
                                _txt2('Precio', Colors.black),
                                _txt1(
                                    getreservaconusuario()
                                        .ListaProductos[index]
                                        .Precio
                                        .toString(),
                                    Colors.black),
                              ],
                            )),
                            const SizedBox(
                              width: 25,
                            ),
                            Column(
                              children: [
                                _txt2('Contenidio', Colors.black),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 8,
                                                offset: Offset(2.5, 2.5))
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                              255, 243, 243, 243),
                                        ),
                                        child: const Text('-',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 8,
                                              offset: Offset(2.5, 2.5))
                                        ],
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromARGB(
                                            255, 243, 243, 243),
                                      ),
                                      child: Text(
                                          getreservaconusuario()
                                              .cantidad[index]
                                              .toString(),
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 8,
                                                offset: Offset(2.5, 2.5))
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                              255, 243, 243, 243),
                                        ),
                                        child: const Text('+',
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }))
              ],
            ),
          )
        ],
      ),
    );
  }
}

Text _txt1(String texto, Color color) {
  return Text(
    texto,
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}

Text _txt2(String texto, Color color) {
  return Text(
    texto,
    textAlign: TextAlign.end,
    style: TextStyle(
      fontSize: 15,
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

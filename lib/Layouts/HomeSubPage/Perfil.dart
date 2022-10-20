import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage('assets/user.jpg'),
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Column(
                children: [
                  _txt1('Amanda Murillo R.', Colors.black),
                  _txt3('amandamur21@gmail.comd', Colors.black),
                  _txt3('Calle 43 #21-32, barrio el mirado', Colors.black)
                ],
              ))
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              // contenedor de el telefono
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 243, 243, 243),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(2.5, 2.5))
                        ]),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.call,
                          color: Colors.black,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            _txt2('Telefono', Colors.black),
                            const SizedBox(
                              height: 5,
                            ),
                            _txt3('3008034265', Colors.black54)
                          ],
                        )
                      ],
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 25, bottom: 25, left: 15, right: 15),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(2.5, 2.5))
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 243, 243, 243),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.wallet,
                          color: Colors.black,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        _txt2('Billetera', Colors.black)
                      ],
                    ),
                  )),
              //Container(),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(2.5, 2.5))
              ],
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 243, 243, 243),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                _opcion(Icons.favorite, 'Favoritos'),
                _opcion(Icons.help, 'Ayuda'),
                _opcion(Icons.comment, 'Comentarios'),
                _opcion(Icons.settings, 'Configuracion'),
                _opcion(Icons.history, 'Historial'),
                _opcion(Icons.person_add, 'Invitar un amigo'),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(2.5, 2.5))
              ],
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 243, 243, 243),
            ),
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.notifications,
                  size: 20,
                  color: Colors.black,
                ),
                _txt2('Notificaciones', Colors.black)
              ],
            ),
          )
        ],
      ),
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

Container _opcion(IconData icono, String texto) {
  return Container(
    margin: const EdgeInsets.all(13),
    padding: const EdgeInsets.only(left: 15),
    child: Row(
      children: [
        Icon(
          icono,
          size: 20,
          color: Colors.black,
        ),
        const SizedBox(
          width: 15,
        ),
        _txt2(texto, Colors.black)
      ],
    ),
  );
}

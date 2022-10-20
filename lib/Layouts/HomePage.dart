import 'package:flutter/material.dart';
import 'package:proyecto_guia/Class/Productos/Plato_fuerte.dart';
import 'package:proyecto_guia/Layouts/HomeSubPage/Inicio.dart';
import 'package:proyecto_guia/Layouts/HomeSubPage/Pedidos.dart';
import 'package:proyecto_guia/Layouts/HomeSubPage/Perfil.dart';

import '../Class/Producto.dart';
import '../Widgets/wcWidgets.dart';
import 'HomeSubPage/Promociones.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _home();
}

class _home extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static final List<Center> _paguinas = <Center>[
    Center(
      child: Inicio(),
    ),
    Center(
      child: Promociones(),
    ),
    Center(
      child: Pedidos(),
    ),
    Center(
      child: Perfil(),
    )
  ];
  static final List<String> _nombres = <String>[
    "Carta Principal",
    "Promociones",
    "Pedidos",
    "Perfil"
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          _nombres.elementAt(_selectedIndex),
          style: const TextStyle(color: Color(0xff000000), fontSize: 25),
        ),
      ),
      body: ListView(
        children: [_paguinas.elementAt(_selectedIndex)],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert),
            label: 'Promociones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Reserva',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Color(0xff838383),
        onTap: _onItemTapped,
      ),
    );
  }
}

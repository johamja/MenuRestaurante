import 'package:flutter/material.dart';
import 'package:proyecto_guia/Class/Cliente.dart';
import 'package:proyecto_guia/Layouts/HomePage.dart';
import 'package:proyecto_guia/Layouts/ItemProductoPage.dart';
import 'package:proyecto_guia/Layouts/SingUpPage.dart';
import 'Layouts/WelcomePage.dart';
import 'Layouts/SingInPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        backgroundColor: Color(0xfffef4e8),
        body: WelcomePage(),
      ),
      routes: {
        '/WelcomePage': (BuildContext context) => const WelcomePage(),
        '/SingInPage': (BuildContext context) => const SingInPage(),
        '/SingUpPage': (BuildContext context) => const SingUpPage(),
        '/HomePage': (BuildContext context) => HomePage(),
      },
    );
  }
}

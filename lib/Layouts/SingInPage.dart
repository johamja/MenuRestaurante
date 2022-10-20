import 'package:flutter/material.dart';
import 'package:proyecto_guia/Widgets/wcWidgets.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xfffffcf7),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: const Color(0xfffffcf7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const Image(image: AssetImage('assets/logo2.png')),
                const Spacer(
                  flex: 2,
                ),
                titleText('Sing In'),
                const SizedBox(
                  height: 15,
                ),
                subTitleText('conectate con una comunidad maravillosa y mas'),
                const SizedBox(
                  height: 15,
                ),
                inTextSB('User'),
                const SizedBox(
                  height: 15,
                ),
                inTextSB('Password'),
                const Spacer(),
                const Spacer(),
                largeButton(() {
                  Navigator.pushNamed(context, '/HomePage');
                }, const Color(0xff3ef7ce), 'Sing In'),
                const Spacer(),
                const SizedBox(
                  height: 15,
                ),
                subTitleText('Creado para la clase de Ing Software 2022-2'),
                const Spacer(
                  flex: 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

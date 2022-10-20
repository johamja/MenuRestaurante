import 'package:flutter/material.dart';
import 'package:proyecto_guia/Widgets/wcWidgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: const Color(0xfffef4e8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            titleText('Bienvenida'),
            const Spacer(
              flex: 1,
            ),
            subTitleText('Esta es una app de prueba para experimentar con ciertos widgets en Flutter. Está inspirada en el diseño de Yasir Ahmad Noori de Dribble'),
            const Spacer(
              flex: 2,
            ),
            const Image(image: AssetImage('assets/logo.png'),width: 300,),
            const Spacer(
              flex: 2,
            ),
            largeButton(() {
              Navigator.pushNamed(context, '/SingInPage');
            }, Colors.transparent, 'Sign In'),
            const Spacer(
              flex: 1,
            ),
            largeButton(() {
              Navigator.pushNamed(context, '/SingUpPage');
            }, const Color(0xFFF2D06B), 'Sign Up'),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}

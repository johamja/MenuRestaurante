import 'package:flutter/material.dart';
import 'package:proyecto_guia/Widgets/wcWidgets.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF3FFFF),
            ),
            child: Column(
              children: [
                const Spacer(
                  flex: 2,
                ),
                const Image(image: AssetImage('assets/logo3.jpg')),
                const Spacer(
                  flex: 1,
                ),
                titleText('Sing Up'),
                const SizedBox(
                  height: 15,
                ),
                subTitleText('create an count, it`s free'),
                const Spacer(
                  flex: 2,
                ),
                inTextSB('User'),
                const SizedBox(
                  height: 15,
                ),
                inTextSB('Password'),
                const SizedBox(
                  height: 15,
                ),
                inTextSB('Confirm password'),
                const Spacer(
                  flex: 2,
                ),
                largeButton(() {
                  Navigator.pushNamed(context, '/HomePage');
                }, const Color(0xFF69B5FF), 'Sing Up'),
                const Spacer(
                  flex: 1,
                ),
                textLink(() {
                  Navigator.pushNamed(context, '/SingInPage');
                }, 'Log In'),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

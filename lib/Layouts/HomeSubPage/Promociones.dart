import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Class/Productos/Plato_fuerte.dart';
import '../../Widgets/wcWidgets.dart';

class Promociones extends StatelessWidget {
  Promociones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        car_promociones(
            "Descuento por el dia del ingeniero",
        Plato_fuerte('Lomo de Cerdo', 52.5,
            'Corte medio del cañon, con salsas de pimentón, BBQ, ciruelas o frutas.',Image.asset('assets/logo2.png')),
            20,
            const Color(0xff66cc7e),
            const Color(0xdf000000)),
        car_promociones2(
            'Descuentos del viernes', 15, Color(0xff69b5ff), Color(0xdf000000)),
        car_promociones2(
            'Descuentos del viernes', 15, Color(0xfff9ce56), Color(0xdf000000)),
        car_promociones(
            "Descuento por el dia del ingeniero",
            Plato_fuerte('Lomo de Cerdo', 52.5,
    'Corte medio del cañon, con salsas de pimentón, BBQ, ciruelas o frutas.',Image.asset('assets/logo2.png')),
            20,
            const Color(0xffc465bc),
            const Color(0xdf000000)),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BotonMas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 45,
        height: 45,
        child: SvgPicture.asset(
          'assets/flecha.svg',
          width: 25,
          color: Colors.black,
          height: 25,
        ),
      ),
      onTap: () {
        print('boton mas ');
      },
    );
  }
}

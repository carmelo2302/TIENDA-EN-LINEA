import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mi_pinta/src/widget/botonMAS.dart';

class Titular extends StatelessWidget {
  final String icono;
  final String titulo;

  Titular({@required this.titulo, @required this.icono});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: double.infinity,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 10,
          ),
          SvgPicture.asset(
            this.icono,
            color: Colors.black,
            width: 30,
            height: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            this.titulo,
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'estilo',
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Container(),
          ),
          BotonMas(),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

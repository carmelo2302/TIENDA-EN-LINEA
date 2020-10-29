import 'package:flutter/material.dart';

class Cartas extends StatelessWidget {
  final String imagen;
  final double presio;
  final String envio;

  const Cartas({this.imagen = 'assets/carga.jpg', this.presio, this.envio});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container(
            margin: EdgeInsets.all(15),
            width: 170,
            height: 270,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Container(
              margin: EdgeInsets.all(2),
              width: 168,
              height: 268,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 168,
                    height: 198,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      child: Image.asset(
                        imagen,
                        fit: BoxFit.cover,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: 140,
                      height: 25,
                      child: Center(
                        child: Text(
                          '$presio',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 4.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'estilo'),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: 140,
                      height: 25,
                      child: Center(
                        child: Text(
                          '$envio',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 4.0,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'estilo'),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

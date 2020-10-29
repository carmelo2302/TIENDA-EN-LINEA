import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mi_pinta/src/provider/menu.dart';

class CatalogadorHombre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      //color: Colors.redAccent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarCatalogo(tipo: 'CLASICO', portada: 'assets/CLASICO HOMBRE.jpg'),
          AvatarCatalogo(tipo: 'SPORT', portada: 'assets/SPORTS HOMBRE.jpg'),
          AvatarCatalogo(tipo: 'CASUAL', portada: 'assets/CASUAL HOMBRE.jpg'),
          AvatarCatalogo(tipo: 'URBANO', portada: 'assets/URBANO HOMBRE.jpg'),
          AvatarCatalogo(tipo: 'SENSUAL', portada: 'assets/SEXUAL HOMBRE.jpg'),
        ],
      ),
    );
  }
}

class CatalogadorMujer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      //color: Colors.redAccent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarCatalogo(tipo: 'CLASICO', portada: 'assets/CLASICA.jpg'),
          AvatarCatalogo(tipo: 'SPORT', portada: 'assets/SPORTS.jpg'),
          AvatarCatalogo(tipo: 'CASUAL', portada: 'assets/CASUAL.jpg'),
          AvatarCatalogo(tipo: 'URBANO', portada: 'assets/URBANA.jpg'),
          AvatarCatalogo(tipo: 'SENSUAL', portada: 'assets/SENXUAL.jpg'),
        ],
      ),
    );
  }
}

class AvatarCatalogo extends StatelessWidget {
  final String tipo;
  final String portada;

  const AvatarCatalogo({@required this.tipo, @required this.portada});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('catalogo marcado');
      },
      child: Container(
        height: 75,
        width: 75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                this.portada,
                fit: BoxFit.cover,
                width: 55,
                height: 55,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
              width: 70,
              height: 20,
              //margin: EdgeInsets.all(3),
              padding: EdgeInsets.all(1),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Text(
                    this.tipo,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'estilo',
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

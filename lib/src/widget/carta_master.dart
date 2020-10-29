import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartaMaster extends StatelessWidget {
  final String imagen;
  final String texto;
  final String marca;
  final String talla;
  final String logo;
  final double presio;

  const CartaMaster({
    this.imagen = 'assets/CLASICA.jpg',
    this.texto = 'Aqui va el nombre del producto',
    this.marca,
    this.talla,
    this.logo = 'assets/brazalete.svg',
    this.presio,
  });
  @override
  Widget build(BuildContext context) {
    dynamic drt = '#36';
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(top: 5, left: 15, right: 15),
      width: double.infinity,
      height: 150,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(1.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                this.imagen,
                fit: BoxFit.cover,
                width: 100,
                height: 149,
              ),
            ),
            SizedBox(
              height: double.infinity,
              width: 5,
            ),
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  this.texto.toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'estilo',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5,
                            height: 5,
                          ),
                          SvgPicture.asset(
                            this.logo,
                            height: 25,
                            width: 25,
                            color: Colors.white,
                          ),
                          Text(
                            '  ${this.marca}    ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'estilo',
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 25,
                      child: Text(
                        '    ${this.talla}    ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'estilo',
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      ' RD $drt  ${this.presio} ',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mi_pinta/src/models/ropa_hombre.dart';
import 'package:mi_pinta/src/models/ropa_mujer.dart';
import 'package:mi_pinta/src/provider/sexo.dart';
import 'package:mi_pinta/src/widget/carrucer.dart';
import 'package:mi_pinta/src/widget/carta_master.dart';
import 'package:mi_pinta/src/widget/catalogador.dart';
import 'package:mi_pinta/src/widget/gribView.dart';
import 'package:mi_pinta/src/widget/selector.dart';
import 'package:mi_pinta/src/widget/swiper.dart';
import 'package:mi_pinta/src/widget/titular.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  final ropa = Ropa1();
  final ropa2 = Ropa2();
  @override
  Widget build(BuildContext context) {
    return _body2(context);
  }

  Widget _body2(BuildContext context) {
    final sexo = Provider.of<Sexo>(context);

    return ListView(children: [
      Column(
        children: [
          Divider(),
          Seleccion(),
          Divider(),
          (sexo.index == 0) ? CatalogadorHombre() : CatalogadorMujer(),
          //GrinView(),
          CartaMaster()
        ],
      ),
    ]);
  }

  Widget _body1(BuildContext context) {
    final sexo = Provider.of<Sexo>(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(),
          Seleccion(),
          Divider(),
          Column(
            children: [
              (sexo.index == 0) ? hombre1() : mujer1(),
            ],
          ),
        ],
      ),
    );
  }

  Widget hombre1() {
    return Column(
      children: [
        SwiperPortada(
          precentacion: ropa.conjuntos,
        ),
        Titular(
          titulo: 'POLOCHE',
          icono: 'assets/shirt.svg',
        ),
        Carrucer(data: ropa.camicetas),
        Titular(
          titulo: 'PANTALONES',
          icono: 'assets/trousers.svg',
        ),
        Carrucer(data: ropa.pantalones),
        Titular(
          titulo: 'TENIS',
          icono: 'assets/shoe.svg',
        ),
        Carrucer(data: ropa.tenis),
        Titular(
          titulo: 'ACCESORIOS',
          icono: 'assets/brazalete.svg',
        ),
        Carrucer(data: ropa.accesorios),
      ],
    );
  }

  Widget mujer1() {
    return Column(
      children: [
        SwiperPortada(
          precentacion: ropa2.conjuntos,
        ),
        Titular(
          titulo: 'BLUZAS',
          icono: 'assets/camisa.svg',
        ),
        Carrucer(data: ropa2.bluzas),
        Titular(
          titulo: 'FALDAS',
          icono: 'assets/falda.svg',
        ),
        Carrucer(data: ropa2.fardas),
        Titular(
          titulo: 'CARZADO',
          icono: 'assets/tacones.svg',
        ),
        Carrucer(data: ropa2.carzados),
        Titular(
          titulo: 'JOYERIA',
          icono: 'assets/joyeria.svg',
        ),
        Carrucer(data: ropa2.joyeria),
        Titular(
          titulo: 'LENCERIA',
          icono: 'assets/lenceria.svg',
        ),
        Carrucer(data: ropa2.lenceria),
      ],
    );
  }
}

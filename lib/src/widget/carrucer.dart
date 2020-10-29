import 'package:flutter/material.dart';
import 'package:mi_pinta/src/widget/card.dart';

class Carrucer extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  Carrucer({this.data});
  final _pageController =
      new PageController(initialPage: 2, viewportFraction: 0.50);
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
        height: _screenSize.height * 0.45,
        child: PageView.builder(
          reverse: true,
          allowImplicitScrolling: true,
          pageSnapping: false,
          controller: _pageController,
          //children: _targetas(context),
          itemCount: data.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                print('ropa seleccionada ');
              },
              child: Cartas(
                imagen: data[i]['portada'],
                envio: data[i]['envio'].toString(),
                presio: data[i]['presio'],
              ),
            );
          },
        ));
  }
}

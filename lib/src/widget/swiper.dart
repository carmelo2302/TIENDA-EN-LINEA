import 'package:flutter/material.dart';
import 'package:flutter_swiper_moolban/flutter_swiper_moolban.dart';

class SwiperPortada extends StatelessWidget {
  final List precentacion;

  SwiperPortada({this.precentacion});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('portada');
      },
      child: Container(
        margin: EdgeInsets.only(top: 2, left: 15, right: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            width: double.infinity,
            height: 400,
            child: Swiper(
              tinderOffset: 20.0,
              itemWidth: 20.0,
              itemBuilder: (BuildContext context, int index) {
                return new Image.asset(
                  precentacion[index]['portada'],
                  fit: BoxFit.fill,
                );
              },
              //indicatorLayout: PageIndicatorLayout.COLOR,
              autoplay: true,
              itemCount: precentacion.length,
              //pagination: new SwiperPagination(),
              //control: new SwiperControl(),
            ),
          ),
        ),
      ),
    );
  }
}

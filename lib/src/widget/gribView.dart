import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:mi_pinta/src/widget/card.dart';

class GrinView extends StatelessWidget {
  const GrinView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int columnCount = 2;
    return GestureDetector(
      onTap: () {
        print(' grinview tecleado');
      },
      child: AnimationLimiter(
        child: GridView.count(
          childAspectRatio: 0.70,
          crossAxisCount: 2,
          children: List.generate(
            10,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 375),
                columnCount: columnCount,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: Cartas(),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

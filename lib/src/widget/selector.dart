import 'package:flutter/material.dart';
import 'package:mi_pinta/src/provider/sexo.dart';
import 'package:provider/provider.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class Seleccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        children: <Widget>[
          Material(
            elevation: 0.0,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                _tabbar(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _tabbar(BuildContext context) {
    final sexo = Provider.of<Sexo>(context);

    return TabBar(
      indicatorWeight: 1.0,
      isScrollable: false,
      onTap: (index) {
        if (index == 0) {
          return sexo.index = 0;
        } else {
          return sexo.index = 1;
        }
      },
      indicatorColor: Colors.white,
      tabs: [
        Tab(
          text: "Hombre",
        ),
        Tab(
          text: "Mujer",
        ),
      ],
      labelColor: Colors.white,
      unselectedLabelColor: Colors.black,
      indicator: RectangularIndicator(
          color: Colors.black,
          bottomLeftRadius: 100,
          bottomRightRadius: 100,
          topLeftRadius: 100,
          topRightRadius: 100,
          paintingStyle: PaintingStyle.fill,
          horizontalPadding: 25,
          verticalPadding: 10),
    );
  }
}

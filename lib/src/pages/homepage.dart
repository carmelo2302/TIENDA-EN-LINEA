import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mi_pinta/src/widget/body.dart';
import 'package:provider/provider.dart';
import 'package:mi_pinta/src/provider/menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      bottomNavigationBar: tabBar(context),
      body: Body(),
    );
  }

  CurvedNavigationBar tabBar(BuildContext context) {
    final menu = Provider.of<Menu>(context);

    return CurvedNavigationBar(
      index: 0,
      buttonBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      color: Colors.black,
      height: 50.0,
      items: <Widget>[
        Icon(
          Icons.home,
          size: 30,
          color: (menu.ind == 0) ? Colors.black : Colors.white,
        ),
        Icon(
          Icons.sort,
          size: 30,
          color: (menu.ind == 1) ? Colors.black : Colors.white,
        ),
        Icon(
          Icons.search,
          size: 30,
          color: (menu.ind == 2) ? Colors.black : Colors.white,
        ),
        Icon(
          Icons.account_circle,
          size: 30,
          color: (menu.ind == 3) ? Colors.black : Colors.white,
        )
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            return menu.ind = 0;
            break;
          case 1:
            return menu.ind = 1;
            break;
          case 2:
            return menu.ind = 2;
            break;
          case 3:
            return menu.ind = 3;
            break;
          default:
        }
      },
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        'MI PINTA',
        style: TextStyle(
          fontFamily: 'estilo',
          fontSize: 40,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {}),
      ],
    );
  }
}

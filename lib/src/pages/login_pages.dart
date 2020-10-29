import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: ClipRRect(child: Image.asset('assets/fondo.jpg')),
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25.0,
                ),
                Image.asset(
                  'assets/logo.png',
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  child: Text(
                    '\n \n Inicia seccion con ',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  height: 120,
                ),
                _BotonLogin('inicia con google', FontAwesomeIcons.google,
                    Colors.red, () {}),
                SizedBox(
                  height: 30,
                ),
                _BotonLogin('inicia con facebook', FontAwesomeIcons.facebook,
                    Colors.blueAccent, () {}),
                SizedBox(height: 30),
                _BotonLogin(
                    'inicia con email', Icons.email, Colors.deepPurpleAccent,
                    () {
                  return Navigator.pushNamed(context, 'loginEmail');
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _BotonLogin extends StatelessWidget {
  final String texto;
  final IconData icon;
  final Color color;
  final Function ontab;

  _BotonLogin(this.texto, this.icon, this.color, this.ontab);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: 250.0,
        height: 60.0,
        child: FlatButton(
            //padding: EdgeInsets.all(15),
            color: this.color,
            onPressed: ontab,
            child: Row(
              children: <Widget>[
                Icon(
                  this.icon,
                  size: 30.0,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  this.texto,
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            )),
      ),
    );
  }
}

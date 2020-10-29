import 'package:flutter/material.dart';

class LoginEmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        _fondo(),
        _loginForn(context),
      ],
    ));
  }

  Widget _fondo() {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.deepPurpleAccent,
            Colors.blueAccent,
            Colors.lightBlueAccent,
          ])),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Image.asset('assets/logo.png'),
            SizedBox(
              width: double.infinity,
            ),
          ],
        )
      ],
    );
  }

  Widget _loginForn(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 200.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            width: size.width * 0.85,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 3.0,
                  )
                ]),
            child: Column(
              children: <Widget>[
                Text(
                  'Ingreso',
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                _crearEmail(),
                SizedBox(
                  height: 20.0,
                ),
                _crearPassword(),
                SizedBox(
                  height: 35.0,
                ),
                _crearBoton(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _crearEmail() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(
              Icons.alternate_email,
              color: Colors.deepPurpleAccent,
            ),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo Electronico',
          ),
        ));
  }

  Widget _crearPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Colors.deepPurpleAccent,
          ),
          hintText: '**********',
          labelText: 'Contraseña',
        ),
      ),
    );
  }

  Widget _crearBoton() {
    return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
          child: Text('Ingresar'),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 0.5,
        color: Colors.deepPurpleAccent,
        textColor: Colors.white,
        onPressed: () {});
  }
}

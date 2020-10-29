import 'package:flutter/material.dart';
import 'package:mi_pinta/src/pages/homepage.dart';
import 'package:mi_pinta/src/provider/sexo.dart';
import 'package:mi_pinta/src/provider/menu.dart';
import 'package:provider/provider.dart';

import 'src/pages/login_email_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Sexo(),
        ),
        ChangeNotifierProvider(
          create: (_) => Menu(),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Pinta',
      home: HomePage(),
      routes: {'loginEmail': (BuildContext context) => LoginEmailPage()},
    );
  }
}

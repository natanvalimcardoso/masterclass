import 'package:flutter/material.dart';
import 'package:masterclass/aula-3-anima%C3%A7%C3%B5es/animacao_explicita.dart';
import 'package:masterclass/aula-3-anima%C3%A7%C3%B5es/animacao_implicita.dart';
import 'package:masterclass/home_page.dart';

import 'aula-2-espaços/login_bank.dart';
import 'aula-2-espaços/login_tinder.dart';
import 'aula-4-miscelanea/scrollAlign.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/animacacaoImplicita': (context) => AnimacaoImplicita(),
        '/loginTinder': (context) => LoginTinder(),
        '/loginBank': (context) => LoginBank(),
        '/animacaoImplicita': (context) => AnimacaoExplicita(),
        '/scrollAlign': (context) => ScrollAlign(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

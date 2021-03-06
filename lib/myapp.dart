import 'package:flutter/material.dart';
import 'package:masterclass/aula-3-anima%C3%A7%C3%B5es/animacao_explicita.dart';
import 'package:masterclass/aula-3-anima%C3%A7%C3%B5es/animacao_implicita.dart';
import 'package:masterclass/aula-4-rotas/rota_um.dart';
import 'package:masterclass/home_page.dart';
import 'aula-2-espaços/login_bank.dart';
import 'aula-2-espaços/login_tinder.dart';
import 'aula-4-miscelanea/scrollAlign.dart';
import 'aula-4-miscelanea/scrollBuilder.dart';
import 'aula-4-rotas/rota_dois.dart';
import 'aula-4-rotas/rota_tres.dart';

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
        '/scrollBuilder' : (context) => ScrollBuilder(),
        '/rotaum' : (context) => RotaUm(),
        '/rotadois' : (context) => RotaDois(),
        '/rotatres' : (context) => RotaTres(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

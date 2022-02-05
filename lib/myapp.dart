import 'package:flutter/material.dart';
import 'package:masterclass/aula-3-anima%C3%A7%C3%B5es/animacao_implicita.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: AnimacaoImplicita(),
    debugShowCheckedModeBanner: false,
    );
  }
}
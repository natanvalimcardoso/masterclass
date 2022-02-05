import 'package:flutter/material.dart';
import 'aula-3-animações/animacao_implicita_loading.dart';




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: AnimacaoImplicitaLoading(),
    debugShowCheckedModeBanner: false,
    );
  }
}
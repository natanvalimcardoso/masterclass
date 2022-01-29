import 'package:flutter/material.dart';
import 'package:masterclass/aula-2/login_tinder.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginTinder());
  }
}
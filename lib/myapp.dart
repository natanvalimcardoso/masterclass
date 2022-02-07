import 'package:flutter/material.dart';
import 'package:masterclass/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) =>  HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

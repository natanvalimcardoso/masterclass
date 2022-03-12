import 'package:flutter/material.dart';

class RotaTres extends StatelessWidget {
  const RotaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rota tres'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (() {
            Navigator.pushNamed(context, '/rotaum');
          }),
          child: Text('Rota Um'),
        ),
      ),
    );
  }
}
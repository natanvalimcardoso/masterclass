import 'package:flutter/material.dart';

class RotaDois extends StatelessWidget {
  RotaDois({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final route = ModalRoute.of(context); 
    final args = route?.settings.arguments; 

    return Scaffold(
      appBar: AppBar(
        title: Text('Rota Dois'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Informação da rota 1: $args'),
          ),
          Center(
            child: ElevatedButton(
              onPressed: (() {
                Navigator.pushNamed(context, '/rotatres');
              }),
              child: Text('Rota 3'),
            ),
          ),
        ],
      ),
    );
  }
}

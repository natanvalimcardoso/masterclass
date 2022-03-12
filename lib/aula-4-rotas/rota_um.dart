import 'package:flutter/material.dart';

class RotaUm extends StatelessWidget {
  RotaUm({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rota Um'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Digite algo',
            ),
          ),
          TextField(
            controller: _controller2,
            decoration: InputDecoration(
              labelText: 'Digite algo',
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: (() {
                final String texto = _controller.text;
                final String texto2 = _controller2.text;
                Navigator.pushNamed(context, '/rotadois', arguments: {
                  texto,
                  texto2,
                });
              }),
              child: Text('Rota 2'),
            ),
          ),
        ],
      ),
    );
  }
}

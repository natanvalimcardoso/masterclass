import 'package:flutter/material.dart';

var selecionado = true;

class AnimacaoImplicita extends StatefulWidget {
  const AnimacaoImplicita({Key? key}) : super(key: key);

  @override
  State<AnimacaoImplicita> createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animacao Implicita'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selecionado = !selecionado;
          });
        },
        child: AnimatedAlign(
          alignment: selecionado ? Alignment.bottomRight : Alignment.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.elasticInOut,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            height: 50,
            width: selecionado ? 50 : 100,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: selecionado
                    ? BorderRadius.circular(50)
                    : BorderRadius.circular(0)),
          ),
        ),
      ),
    );
  }
}

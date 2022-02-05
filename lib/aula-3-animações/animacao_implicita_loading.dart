import 'package:flutter/material.dart';

var selecionado = true;
//
class AnimacaoImplicitaLoading extends StatefulWidget {
  const AnimacaoImplicitaLoading({Key? key}) : super(key: key);

  @override
  State<AnimacaoImplicitaLoading> createState() => _AnimacaoImplicitaLoadingState();
}

class _AnimacaoImplicitaLoadingState extends State<AnimacaoImplicitaLoading> {
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
          duration: const Duration(seconds: 1),
          curve: Curves.easeInQuart,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            height: 50,
            width: selecionado ? 50 : 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: selecionado
                    ? BorderRadius.circular(50)
                    : BorderRadius.circular(0)),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

var selecionado = true;

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
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: 300,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

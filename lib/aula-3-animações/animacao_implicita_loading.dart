// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

double selecionado = 0.0;

class AnimacaoImplicitaLoading extends StatefulWidget {
  const AnimacaoImplicitaLoading({Key? key}) : super(key: key);

  @override
  State<AnimacaoImplicitaLoading> createState() =>
      _AnimacaoImplicitaLoadingState();
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
                Container(
                  width: 319,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,

                    ),
                  ),
                  child: Row(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: MediaQuery.of(context).size.width * selecionado,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 3, 100, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (selecionado <= 0.7) {
                    print(selecionado);
                    selecionado += 0.1;
                  }
                });
              },
              child: const Text(
                'Subir',
              )),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (selecionado >= 0.1) {
                    selecionado -= 0.1;
                    print(selecionado);
                  }
                });
              },
              child: const Text(
                'Descer',
              ))
        ],
      ),
    );
  }
}

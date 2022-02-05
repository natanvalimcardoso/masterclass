// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnimacaoImplicita extends StatelessWidget {
  const AnimacaoImplicita({Key? key}) : super(key: key);

  final widht = 50.0;
  final border = 50.0;


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          height: 50,
          width: widht,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 153, 255),
            borderRadius: BorderRadius.circular(border),
          ),
        ),
      ),
    );
  }
}

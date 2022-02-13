import 'package:flutter/material.dart';

class ScrollCorrect extends StatelessWidget {
  const ScrollCorrect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
          Container(
            width: 300,
            height: 300,
            color: Color.fromARGB(255, 156, 107, 34),
          ),
          Container(
            width: 300,
            height: 300,
            color: Color.fromARGB(255, 163, 52, 0),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScrollCorrect extends StatelessWidget {
  const ScrollCorrect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        child: ListView(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
            Align(
              child: Container(
                width: 200,
                height: 300,
                color: Color.fromARGB(255, 156, 156, 34),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 150,
                  color: Color.fromARGB(255, 255, 9, 9),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 150,
                  color: Color.fromARGB(255, 104, 33, 33),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 150,
                  color: Color.fromARGB(255, 9, 255, 9),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 150,
                  color: Color.fromARGB(255, 21, 66, 133),
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ScrollBuilder extends StatelessWidget {
  const ScrollBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ScrollBuilder extends StatelessWidget {
   ScrollBuilder({Key? key}) : super(key: key);

  final names = ['Jacob', 'Mia', 'Natan', 'Olivia', 'Sophia', 'William', 'Isabella', 'Liam', 'Emma', 'Noah', 'Ava', 'Ethan', 'Emily', 'Mason', 'Aria', 'Lucas', 'Chloe', 'Logan', 'Grace', 'Oliver', 'Riley', 'Alexander', 'Layla', 'Jacob', 'Mia', 'Natan', 'Olivia', 'Sophia', 'William', 'Isabella', 'Liam', 'Emma', 'Noah', 'Ava', 'Ethan', 'Emily', 'Mason', 'Aria', 'Lucas', 'Chloe', 'Logan', 'Grace', 'Oliver', 'Riley', 'Alexander', 'Layla',];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final name = names[index];
          return ListTile(
            title: Text(name),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'class_3.dart';

class Class2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Class 2",
          style: Theme.of(context).textTheme.headline,
        ),
        Class3()
      ],
    );
  }
}

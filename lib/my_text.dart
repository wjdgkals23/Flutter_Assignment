import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;

  const MyText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_assignment/my_text.dart';
import './my_text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String text = "TEST";
  Key key = Key('text');

  void changeText(String text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Assignment'),
          ),
          body: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [MyText(text), MyTextFormField(key, changeText)],
          )),
        ));
  }
}

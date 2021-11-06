import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final Key _key;
  final Function postText;

  TextEditingController textController = new TextEditingController();
  MyTextFormField(this._key, this.postText);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
            constraints: BoxConstraints.tight(const Size(300, 80)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your username',
                ),
              ),
            )),
        ElevatedButton(
            onPressed: () => postText(textController.text),
            child: const Text('post'))
      ],
    );
  }
}

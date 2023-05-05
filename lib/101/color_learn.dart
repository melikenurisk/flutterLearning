import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          // ignore: deprecated_member_use
          color: Theme.of(context).errorColor,
          child: const Text('data'),
        ));
  }
}

class ColorItems {
  static const Color porchase = Color(0xffEDB961);

  static const Color sulu = Color.fromRGBO(173, 237, 97, 1);
}

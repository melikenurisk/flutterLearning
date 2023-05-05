import 'dart:math';

import 'package:flutter/material.dart';

import '../core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const RandomImage(),
                //dense: true, olabildiğince sıkıştırma
                onTap: () {},
                subtitle: const Text('How do you use your card ?'),
                minVerticalPadding: 0,
                dense: true,
                leading: Container(
                    height: 200,
                    width: 30,
                    alignment: Alignment.bottomCenter,
                    color: Colors.green,
                    child: const Icon(Icons.money)),
                trailing: Container(
                  width: 20,
                  color: Colors.red,
                  child: const Icon(Icons.chevron_right),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

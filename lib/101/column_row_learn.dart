import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // 4+2+2+2
          Expanded(
              // %40
              flex: 4,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.orange)),
                  Expanded(child: Container(color: Colors.lightBlue)),
                  Expanded(child: Container(color: Colors.lime)),
                  Expanded(child: Container(color: Colors.purple)),
                ],
              )),
          const Spacer(flex: 2),
          const Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('a'),
                  Text('b'),
                  Text('c'),
                ],
              )),
          const SizedBox(
            height: ProjectContainerSized.cardHeight,
            child: Column(
              children: [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Spacer(),
                Expanded(child: Text('data')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjectContainerSized {
  static const double cardHeight = 200;
}

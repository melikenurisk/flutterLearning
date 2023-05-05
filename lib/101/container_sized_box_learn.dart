import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: 300,
              height: 200,
              child: Text('a' * 500),
            ),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            width: 100,
            height: 100,
            // color: Colors.red,
            constraints: const BoxConstraints(
                maxHeight: 100, maxWidth: 200, minWidth: 100),

            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            child: Text('aa' * 20),
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(colors: [Colors.purple, Colors.black]),
    boxShadow: const [
      BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12),
    ],
    border: Border.all(width: 8, color: Colors.white12),
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          borderRadius: BorderRadius.circular(10),
          //color: Colors.red,
          gradient: const LinearGradient(colors: [Colors.purple, Colors.black]),
          boxShadow: const [
            BoxShadow(
                color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12),
          ],
          //shape: BoxShape.circle,
          border: Border.all(width: 8, color: Colors.white12),
        );
}

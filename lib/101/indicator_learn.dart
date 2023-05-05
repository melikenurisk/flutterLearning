import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Center(child: CenterCircularRedProgress())],
      ),
      body: const LinearProgressIndicator(
        backgroundColor: Colors.cyan,
        minHeight: 10,
      ),
    );
  }
}

class CenterCircularRedProgress extends StatelessWidget {
  const CenterCircularRedProgress({
    super.key,
  });
  final redColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: redColor,
      value: 0.8,
      backgroundColor: Colors.white,
    );
  }
}

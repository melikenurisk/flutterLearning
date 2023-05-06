// bİr ekran olacak ekranda 3 button ve bunlara basınca renk değişimi olacak
// seçili buton button selected icon olsun

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    //print(oldWidget.initialColor != _backgroundColor);
    //inspect(widget);
    if (oldWidget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBGColor(widget.initialColor!);
    }
  }

  void changeBGColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: "Red"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: "Yellow"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: "Blue"),
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBGColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBGColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBGColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}

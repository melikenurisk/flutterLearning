import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key, this.size});
  final double? size;
  final _defaultSize = 40;

  @override
  Widget build(BuildContext context) {
    return SpinKitWave(
      color: Colors.white,
      size: size ?? 50.0,
      //controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
    );
  }
}

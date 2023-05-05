import 'package:flutter/material.dart';
import 'package:full_learn/101/icon_learn.dart';
import 'package:full_learn/101/image_learn.dart';
import 'package:full_learn/101/stack_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 1);
  int _currentPageIndex = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          const ImageLearn(),
          IconLearnView(),
          const StackLearn(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}

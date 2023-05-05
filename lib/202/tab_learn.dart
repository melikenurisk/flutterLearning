import 'package:flutter/material.dart';
import 'package:full_learn/101/icon_learn.dart';
import 'package:full_learn/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _myTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _myTabViews.values.length,
      child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {
            _tabController.animateTo(_myTabViews.home.index);
          }),
          bottomNavigationBar: BottomAppBar(notchMargin: _notchedValue, child: _tabbar()),
          appBar: AppBar(),
          body: _tabbarView()),
    );
  }

  TabBar _tabbar() {
    return TabBar(
      padding: EdgeInsets.zero,
      onTap: (int index) {},
      controller: _tabController,
      tabs: _myTabViews.values
          .map((e) => Tab(
                text: e.name,
              ))
          .toList(),
    );
  }

  TabBarView _tabbarView() {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [ImageLearn(), IconLearnView(), IconLearnView(), IconLearnView()]);
  }
}

enum _myTabViews { home, settings, favorite, profile }

extension _myTabViewExtension on _myTabViews {}

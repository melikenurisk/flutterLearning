import 'package:flutter/material.dart';
import 'package:full_learn/202/state_manage/state_learn_view_model.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        changeVisible();
      }),
      appBar: AppBar(
        backgroundColor: isOpacity ? Colors.pink : Colors.yellow,
        shadowColor: isVisible ? Colors.blue : Colors.purple,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_learn/101/list_view_learn.dart';
import 'package:full_learn/101/page_view_learn.dart';
import 'package:full_learn/202/model_learn_view.dart';
import 'package:full_learn/202/tab_learn.dart';
import 'package:full_learn/demos/color_demos_view.dart';
import '101/button_learn.dart';
import '101/color_learn.dart';
import '101/navigate_detail_learn.dart';
import '101/navigation_learn.dart';
import '101/stateful_life_cycle.dart';
import '101/stateless_learn.dart';
import '101/text_field_learn.dart';
import 'demos/color_life_cycle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          tabBarTheme: const TabBarTheme(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.green,
          ),
          bottomAppBarTheme: const BottomAppBarTheme(
            shape: CircularNotchedRectangle(),
          ),

          // ignore: deprecated_member_use
          errorColor: ColorItems.sulu,
          textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.green, selectionColor: Colors.red),

          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            prefixIconColor: Colors.red,
            border: OutlineInputBorder(),
            floatingLabelStyle: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.w800),
          ),

          textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.red)),

          progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),

          listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),

          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            elevation: 0,
            centerTitle: true,
          ),
        ),
        home: const ModelLearnView());
  }
}

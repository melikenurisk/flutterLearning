import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_learn/202/animated_learn_view.dart';
import 'package:full_learn/202/image_learn_202.dart';

import 'package:full_learn/202/package_learn_view.dart';
import 'package:full_learn/202/service/service_get_learn_view.dart';
import 'package:full_learn/202/service/service_post_learn_view.dart';
import 'package:full_learn/202/theme/light_theme.dart';
import 'package:full_learn/202/theme_learn_view.dart';
import '101/color_learn.dart';

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
        theme: LightTheme().theme,
        // theme: ThemeData.dark().copyWith(
        //   tabBarTheme: const TabBarTheme(
        //     indicatorSize: TabBarIndicatorSize.label,
        //     indicatorColor: Colors.white,
        //     unselectedLabelColor: Colors.green,
        //   ),
        //   bottomAppBarTheme: const BottomAppBarTheme(
        //     shape: CircularNotchedRectangle(),
        //   ),

        //   // ignore: deprecated_member_use
        //   errorColor: ColorItems.sulu,
        //   textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.green, selectionColor: Colors.red),

        //   inputDecorationTheme: const InputDecorationTheme(
        //     filled: true,
        //     fillColor: Colors.white,
        //     prefixIconColor: Colors.red,
        //     border: OutlineInputBorder(),
        //     floatingLabelStyle: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.w800),
        //   ),

        //   textTheme: const TextTheme(titleMedium: TextStyle(color: Colors.red)),

        //   progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),

        //   listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),

        //   appBarTheme: const AppBarTheme(
        //     backgroundColor: Colors.transparent,
        //     systemOverlayStyle: SystemUiOverlayStyle.light,
        //     elevation: 0,
        //     centerTitle: true,
        //   ),
        // ),
        home: const AnimatedLearnView());
  }
}

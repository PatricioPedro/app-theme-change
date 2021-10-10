import 'package:app_theme_change/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    // AnimatedBuilder will allows that app rebuild when exists some change in HomeController
    return AnimatedBuilder(
      animation: HomeController.instance,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
            brightness: HomeController.instance.isDark
                ? Brightness.dark
                : Brightness.light),
        title: "Theme change app",
        home: const HomeView(),
      ),
    );
  }
}

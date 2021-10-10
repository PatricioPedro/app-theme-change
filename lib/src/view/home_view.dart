import 'package:app_theme_change/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme change app'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        actions: [
          Switch(
              value: HomeController.instance.isDark,
              onChanged: (value) {
                HomeController.instance.changeTheme();
              })
        ],
      ),
    );
  }
}

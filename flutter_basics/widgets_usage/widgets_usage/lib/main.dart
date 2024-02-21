import 'package:flutter/material.dart';
import 'package:widgets_usage/MainPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Widgets Usage",
      debugShowCheckedModeBanner: false,
      home:  MainPage(),
    );
  }
}

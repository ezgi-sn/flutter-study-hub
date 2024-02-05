import 'package:basics/colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style: TextStyle(color: primaryTextColor, fontFamily: "Merienda"),
        ),
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: const Center(),
    );
  }
}

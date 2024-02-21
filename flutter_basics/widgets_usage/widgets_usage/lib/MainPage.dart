import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var tfController = TextEditingController();
  String inputData = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets"),
      ),
      body: Center(
        child: Column(children: [
          Text(inputData),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                controller: tfController,
                decoration: const InputDecoration(hintText: "Data")),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  inputData = tfController.text;
                });
              },
              child: const Text("Capture"))
        ]),
      ),
    );
  }
}

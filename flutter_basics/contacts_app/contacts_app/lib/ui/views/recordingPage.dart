import 'package:flutter/material.dart';

class RecordingPage extends StatefulWidget {
  const RecordingPage({super.key});

  @override
  State<RecordingPage> createState() => _RecordingPageState();
}

class _RecordingPageState extends State<RecordingPage> {
  var tfContactName = TextEditingController();
  var tfContactTel = TextEditingController();

  Future<void> saveRecord(String contactName, String contactTel) async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recording Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tfContactName,
                decoration: const InputDecoration(hintText: "Contact Name"),
              ),
              TextField(
                controller: tfContactTel,
                decoration: const InputDecoration(hintText: "Contact Number"),
              ),
              ElevatedButton(onPressed: () {
                saveRecord(tfContactName.text, tfContactTel.text);
              }, child: const Text("Save"))
            ],
          ),
        ),
      ),
    );
  }
}

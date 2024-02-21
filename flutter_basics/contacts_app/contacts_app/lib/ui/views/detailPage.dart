import 'package:flutter/material.dart';

import '../../data/entity/Contacts.dart';

class DetailPage extends StatefulWidget {
  Contacts contact;
  DetailPage({required this.contact});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var tfContactName = TextEditingController();
  var tfContactTel = TextEditingController();

  Future<void> updateRecord(int contactId, String contactName, String contactTel) async {}

@override
  void initState() {
    super.initState();
    var contact = widget.contact;
    tfContactName.text = contact.contactName;
    tfContactTel.text = contact.contactTel;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
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
                updateRecord(widget.contact.contactId, widget.contact.contactName, widget.contact.contactTel);
              }, child: const Text("Update"))
            ],
          ),
        ),
      ),
    );
  }
}

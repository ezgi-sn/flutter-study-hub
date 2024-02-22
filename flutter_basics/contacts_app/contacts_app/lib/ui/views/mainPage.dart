import 'package:contacts_app/data/entity/Contacts.dart';
import 'package:contacts_app/ui/views/detailPage.dart';
import 'package:contacts_app/ui/views/recordingPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isSearching = false;

  Future<void> search(String keyword) async {}

  Future<List<Contacts>> loadContacts() async {
    var contactsList = <Contacts>[];
    var k1 = Contacts(contactId: 1, contactName: "ezgi", contactTel: "111111");
    var k2 = Contacts(contactId: 2, contactName: "ayşe", contactTel: "222222");
    var k3 = Contacts(contactId: 3, contactName: "aysu", contactTel: "333333");

    contactsList.add(k1);
    contactsList.add(k2);
    contactsList.add(k3);
    return contactsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearching
            ? TextField(
                decoration: const InputDecoration(hintText: "Search"),
                onChanged: (value) {
                  search(value);
                },
              )
            : const Text("Contacts"),
        actions: [
          isSearching
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isSearching = false;
                    });
                  },
                  icon: const Icon(Icons.clear))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isSearching = true;
                    });
                  },
                  icon: const Icon(Icons.search))
        ],
      ),
      body: FutureBuilder<List<Contacts>>(
        future: loadContacts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var contactsList = snapshot.data;
            return ListView.builder(
              itemCount: contactsList!.length,
              itemBuilder: (context, index) {
                var contact = contactsList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailPage(contact: contact,))).then((value) {
            print("navigated to main page");
          });

                  },
                  child: Card(
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  contact.contactName,
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(contact.contactTel),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.close,
                                color: Colors.black54,
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const RecordingPage())).then((value) {
            print("navigated to main page");
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

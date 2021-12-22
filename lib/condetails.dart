// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Contacts",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(Icons.more_vert_outlined),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: const [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
                    radius: 100,
                  ),
                ),
              ),
              Text(
                "Todor Kruz",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Pardubice, Czechia",
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
                height: 0,
                color: Colors.grey,
              ),
            ],
          ),
          Container(
            color: const Color(0xfff3fff9),
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    "Mobile",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  subtitle: const Text("+233 20 01 68 111"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.message,
                          color: Colors.black,
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(
                              side: BorderSide(style: BorderStyle.solid)),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(
                              side: BorderSide(style: BorderStyle.solid)),
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: const Text(
                    "Email",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  subtitle: const Text("todorkruz@gmail.com"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(
                            side: BorderSide(style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const ListTile(
                  title: Text(
                    "Group",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text("Uni friends"),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Account Linked",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            color: const Color(0xfff3fff9),
            child: (Column(
              children: const [
                ListTile(
                  title: Text("Telegram"),
                  trailing: Icon(
                    FontAwesomeIcons.telegram,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text("WhatsApp"),
                  trailing: Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.green,
                  ),
                )
              ],
            )),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "More Options",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            color: const Color(0xfff3fff9),
            child: Column(
              children: const [
                ListTile(
                  title: Text("Share Contact"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

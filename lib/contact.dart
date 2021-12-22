import 'package:contactapp/condetails.dart';
import 'package:flutter/material.dart';

class MyContactApp extends StatelessWidget {
  const MyContactApp({Key? key}) : super(key: key);

  get actions => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "My Contact",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  elevation: 5,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ("Search by name or number"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      prefixIcon: const Icon(Icons.search),
                      fillColor: Colors.white,
                      // filled: true,
                    ),
                  ),
                ),
              ),
              const ListTile(
                title: Text(
                  "Recents",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const ContactWidget(
                name: 'Anna Marrie',
                number: '+233 20 01 68 032',
                profile:
                    'https://images.unsplash.com/photo-1524502397800-2eeaad7c3fe5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                icon: Icons.more_horiz_outlined,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 0,
                ),
              ),
              InkWell(
                child: const ContactWidget(
                  name: "Todor",
                  number: "+233 20 01 68 111",
                  profile:
                      "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                  icon: Icons.more_horiz_outlined,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Contact(),
                    ),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 0,
                ),
              ),
              const ContactWidget(
                  name: "Wendy",
                  number: "+233 24 01 98 101",
                  profile:
                      "https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1376&q=80",
                  icon: Icons.more_horiz_outlined),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 0,
                ),
              ),
              const ListTile(
                title: Text(
                  "Contact",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const ListTile(
                title: Text(
                  "A",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
              const ContactWidget(
                  name: "Adele",
                  number: "+233 24 01 98 220",
                  profile:
                      "https://images.unsplash.com/photo-1635491512913-bd473a066d1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=384&q=80",
                  icon: Icons.more_horiz_outlined),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 0,
                ),
              ),
              const ContactWidget(
                  name: "Anna Marrie",
                  number: "+233 20 01 68 100",
                  profile:
                      "https://images.unsplash.com/photo-1524502397800-2eeaad7c3fe5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  icon: Icons.more_horiz_outlined),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 0,
                ),
              ),
              const ListTile(
                title: Text(
                  "B",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
              const ContactWidget(
                  name: "Belinda",
                  number: "+233 24 01 98 420",
                  profile:
                      "https://images.unsplash.com/photo-1563132305-24784f57eeea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  icon: Icons.more_horiz_outlined),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 0,
                ),
              ),
              const ContactWidget(
                  name: "Boris McCain",
                  number: "+233 27 01 68 890",
                  profile:
                      "https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                  icon: Icons.more_horiz_outlined),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 0,
                ),
              ),
              const ListTile(
                title: Text(
                  "C",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
              const ContactWidget(
                  name: "Christ Wood",
                  number: "+233 56 51 68 490",
                  profile:
                      "https://images.unsplash.com/photo-1515201899114-98ba64d41df7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80",
                  icon: Icons.more_horiz_outlined),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Contact();
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    Key? key,
    required this.name,
    required this.number,
    required this.profile,
    required this.icon,
  }) : super(key: key);

  final String name;
  final String number;
  final String profile;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(profile),
        // radius: 40,
      ),
      title: Text(name),
      subtitle: Text(number),
      trailing: Icon(icon),
    );
  }
}

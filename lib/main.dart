import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Navigation Drawer Example'),
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Mayank Raj"),
              accountEmail: Text("mayankraj@siesgst.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 4, 124, 223),
                child: Text("MR"),
              ),
            ),
            ListTile(
              title: const Text("Inbox"),
              leading: const Icon(Icons.mail),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mailpage()),
                );
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text("Primary"),
              leading: const Icon(Icons.inbox),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Primarypage()),
                );
              },
            ),
            ListTile(
              title: const Text("Social"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: const Text("Promotions"),
              leading: new Icon(Icons.local_offer),
            ),
          ],
        ),
      ),
    );
  }
}

class Mailpage extends StatelessWidget {
  const Mailpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mail Screen"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Mail Screen")),
      ),
    );
  }
}

class Primarypage extends StatelessWidget {
  const Primarypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primary Screen"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Primary Screen")),
      ),
    );
  }
}

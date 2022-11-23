import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  mySnackBar(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("APP BAR"),
        titleSpacing: 100,
        toolbarHeight: 60,
        toolbarOpacity: .80,
        elevation: 5,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar("Comment", context);
              },
              icon: const Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                mySnackBar("Search", context);
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mySnackBar("Settings", context);
              },
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                mySnackBar("Email", context);
              },
              icon: const Icon(Icons.email))
        ],
      ),
      body: const Text("Body text goes here"),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        onTap: (int index) => {
          if (index == 0)
            {mySnackBar("Home Section", context)}
          else if (index == 1)
            {mySnackBar("Contact Section", context)}
          else if (index == 2)
            {mySnackBar("Profile Section", context)}
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Emarat Hossain'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                mySnackBar("This is home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: () {
                mySnackBar("This is email address", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: () {
                mySnackBar("This is my phone number", context);
              },
            )
          ],
        ),
      ),
    );
  }
}

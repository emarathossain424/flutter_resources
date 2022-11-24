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
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text("Emarat Hossain Badhon"),
                accountEmail: Text("badhon424@gmail.com"),
                onDetailsPressed: () {
                  mySnackBar("This is a profile", context);
                },
                currentAccountPicture: Image.network(
                    "data:image/jpeg;base64,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"),
              ),
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
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text("Emarat Hossain Badhon"),
                accountEmail: Text("badhon424@gmail.com"),
                onDetailsPressed: () {
                  mySnackBar("This is a profile", context);
                },
                currentAccountPicture: Image.network(
                    "data:image/jpeg;base64,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"),
              ),
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

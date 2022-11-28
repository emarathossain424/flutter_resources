import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeSection());
  }
}

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

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
      body: Container(
        height: 250,
        width: 250,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.pink, width: 5.0),
        ),
        child: Image.network(
            "https://static1.xdaimages.com/wordpress/wp-content/uploads/2018/02/Flutter-Framework-Feature-Image-Background-Colour.png"),
      ),
    );
  }
}

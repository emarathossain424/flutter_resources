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

  //Showing snackbar
  mySnackBar(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Happy Bar"),
        backgroundColor: Colors.pink,
        elevation: 25,
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar("No Result found", context);
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mySnackBar("0 Notification", context);
              },
              icon: const Icon(Icons.notifications)),
          IconButton(
              onPressed: () {
                mySnackBar("Watch your profile information", context);
              },
              icon: const Icon(Icons.person))
        ],
      ),
    );
  }
}

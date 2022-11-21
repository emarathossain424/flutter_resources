/// Questions
/// 01. Why can't we directly call mySnackBar(), like "onPressed:mySnackBar()"?
/// 02. Why we have to put const keyword everytime ?

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
        body: const Text("Body text goes here"));
  }
}

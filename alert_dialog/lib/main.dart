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

  myAlertDialog(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
            child: AlertDialog(
          title: Text("Simple Alert"),
          content: Text("Do you want to perform ?"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  mySnackBar("Action performed", context);
                },
                child: Text('Yes')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('No'))
          ],
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20),
        primary: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ));

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
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            myAlertDialog(context);
          },
          child: Text('Alert'),
        ),
      ),
    );
  }
}

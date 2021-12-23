import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Good evening",
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        actions: [
          ElevatedButton.icon(
              onPressed: null,
              icon: Icon(Icons.settings_outlined,
              color: Colors.white,
              ),
              label:Text(""),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          ],
        )
      ),
    );
  }
}

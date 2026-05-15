import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Apple"),
            ),
            ListTile(
              title: Text("Mango"),
            ),
            ListTile(
              title: Text("Orange"),
            ),
          ],
        ),
      ),
    );
  }
}
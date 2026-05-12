import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("column&row"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("c"),
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.black,
                ),
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.black,
                ),
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.black,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("R"),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

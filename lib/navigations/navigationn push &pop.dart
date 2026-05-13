import 'package:flutter/material.dart';

void main() {
  runApp((myApp()));
}

class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstscreen(),
    );
  }
}

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen one"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("screen two"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Scaffold(
                  appBar: AppBar(
                    title: Text("screen 2"),
                  ),
                  body: Center(
                    child: ElevatedButton(
                      child: Text("click"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ));
            }));
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/counter_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int count = 0;

  void increaseCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),

      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(fontSize: 40),
        ),
      ),

      floatingActionButton: CounterButton(
        onPressed: increaseCount,
      ),
    );
  }
}
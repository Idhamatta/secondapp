// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main(List<String> args) {}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // method
  void _incrementCounter() {
    // setState rebuilds the widget
    setState(() {
      _counter++;
    });
  }

  // UI (User Interface)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('H o m e'),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.person,
                size: 48,
              ),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm_sharp),
              title: Text('alarm'),
            )
          ],
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // message
          Text(
            'You pushed the button this many time',
            style: TextStyle(fontSize: 18),
          ),
          // counter value
          Text(
            _counter.toString(),
            style: TextStyle(fontSize: 40),
          ),
          // button
          ElevatedButton(
              onPressed: _incrementCounter, child: Text('Increment!'))
        ],
      )),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 5;
  void _timer() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        if (index > 0) {
          index--;
          if (index == 0) {
            mycolor = mycolor;
          } else if (index == 1) {
            mycolor = Colors.red;
          } else if (index == 2) {
            mycolor = Colors.green;
          } else if (index == 3) {
            mycolor = Colors.yellow;
          } else if (index == 4) {
            mycolor = Colors.purple;
          } else if (index == 5) {
            mycolor = Colors.blue;
          }
        } else {
          timer.cancel();
          mycolor = Colors.white;
        }
      });
    });
  }

  Color mycolor = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolor,
      appBar: AppBar(
        backgroundColor: mycolor,
        title: Text(
          'My Design ',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Center(
          child: Text(
            index == 0 ? 'Done ' : index.toString(),
            style: TextStyle(
              fontSize: 70,
            ),
          ),
        ),
        MaterialButton(
          color: Colors.deepPurple,
          onPressed: _timer,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'S T A R T',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}

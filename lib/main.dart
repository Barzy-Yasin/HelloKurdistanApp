import 'package:flutter/material.dart';

void main() {
  runApp(const HelloKurdistanApp());
}

class HelloKurdistanApp extends StatelessWidget {
  const HelloKurdistanApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 40, 40, 40),
        body: Center(
          child: Text(
            "'-_ Barzy _-'",
            style: TextStyle(
              fontSize: 35,
              color: Color.fromARGB(255, 213, 213, 213),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Hello World!",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 70,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
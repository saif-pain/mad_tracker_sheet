import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is the Profile Screen',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back to Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styling Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TextStylingExample(),
    );
  }
}
class TextStylingExample extends StatelessWidget {
  const TextStylingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Styling Example')),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 24, color: Colors.purple),
            ),
            SizedBox(height: 10),
            Text(
              'This is a simple text widget.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('The Third Example', style: TextStyle(color: Colors.red)),
            SizedBox(height: 10),
            Text(
              'THIS IS ALL CAPS',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Row : ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
                Text(
                  'Styled ',
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),
                Text(
                  'Text',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'This is a text with a custom font',
              style: GoogleFonts.alegreyaSc(
                textStyle: TextStyle(color: Colors.red, fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

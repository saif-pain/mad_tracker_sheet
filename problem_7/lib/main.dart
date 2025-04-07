import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid App',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatelessWidget {
  ImageGridScreen({super.key});

  final List<String> imageUrls = [
    'https://plus.unsplash.com/premium_photo-1680402879257-48ffbbc6db1d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cm9ib3R8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1534723328310-e82dad3ee43f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHJvYm90fGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1507146153580-69a1fe6d8aa1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cm9ib3R8ZW58MHx8MHx8fDA%3D',
    'https://images.unsplash.com/photo-1580835239846-5bb9ce03c8c3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHJvYm90fGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1589254066213-a0c9dc853511?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHJvYm90fGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1645808899485-0f802769c902?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzF8fHJvYm90fGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1631882456892-54a30e92fe4f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzZ8fHJvYm90fGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1622557686849-35af877972aa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA0fHxyb2JvdHxlbnwwfHwwfHx8MA%3D%3D',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Robots'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(imageUrls[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
    );
  }
}

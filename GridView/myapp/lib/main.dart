import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> images = [
    'images/image1.jpg',
    'images/image1.jpg',
    'images/image1.jpg',
    'images/image1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        children: List.generate(images.length, (index) {
          return Card(
            child: Column(
              children: <Widget>[
                Image.asset(images[index]),
                Text('Image ${index + 1}'),
              ],
            ),
          );
        }),
      ),
    );
  }
}

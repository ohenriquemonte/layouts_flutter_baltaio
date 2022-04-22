import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.yellow,
              child: const Text('Item 1'),
            ),
            const Text('Item 2'),
            const Text('Item 3'),
            const Text('Item 4'),
            const Text('Item 5'),
            const Text('Item 6'),
            const Text('Item 7'),
            const Text('Item 8'),
            const Text('Item 9'),
            const Text('Item 10'),
            const Text('Item 11'),
          ],
        ),
      ),
    );
  }
}

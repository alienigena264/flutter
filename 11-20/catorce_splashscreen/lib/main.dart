import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xbox',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: const Color(0xff107C11),
          title: const Text('Xbox'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
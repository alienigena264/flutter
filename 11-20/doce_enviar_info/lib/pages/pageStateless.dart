import 'package:flutter/material.dart';

class PageStateles extends StatelessWidget {
  final String texto;
  const PageStateles(this.texto,{Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless page'),
      ),
      body: Center(
        child: Text(texto),
      ),
    );
  }
}
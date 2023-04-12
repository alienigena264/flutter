import 'package:flutter/material.dart';

class PagesStatefull extends StatefulWidget {
  final String texto;
  const PagesStatefull(this.texto,{Key? key}): super(key: key);

  @override
  State<PagesStatefull> createState() => _PagesStatefullState();
}

class _PagesStatefullState extends State<PagesStatefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statefull page'),
      ),
      body: Center(
        child: Text(widget.texto),
      ),
    );
  }
}
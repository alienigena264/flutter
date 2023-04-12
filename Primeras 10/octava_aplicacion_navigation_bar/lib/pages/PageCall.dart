// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PageCall extends StatelessWidget {
  const PageCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const  [
          Icon(Icons.call_outlined, size: 150, color: Colors.grey,semanticLabel: "Esto se borra",),
          Text('No hay llamadas', style: TextStyle(fontSize: 25),),
          ],
        ),
    );
  }
}
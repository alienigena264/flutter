// ignore_for_file: file_names

import 'package:flutter/material.dart';


class PageUsers extends StatelessWidget {
  const PageUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Juan', style: TextStyle(fontSize: 25),),
          Text('Loco', style: TextStyle(fontSize: 25),),
          Text('Gordo', style: TextStyle(fontSize: 25),),
        ],
      ),
    );
  }
}

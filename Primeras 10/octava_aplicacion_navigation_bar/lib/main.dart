import 'package:flutter/material.dart';


import 'pages/PageCall.dart';
import 'pages/PageHome.dart';
import 'pages/PageUsers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget>  _paginas = [
    const PageHome(),
    const PageUsers(),
    const PageCall(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: _paginas[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          // Al tocar el propio navBar manda el index a la funcion y por esto se cambia solo
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          currentIndex: _selectedIndex,
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: 'User'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
          ]
        ),
      ),
    );
  }
}

// para cambiar el contenido de nuestra app al darle a los botones voy a crear nuevos widgets 



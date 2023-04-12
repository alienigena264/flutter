import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int value = 0;
  _changeValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();


    setState(() {
      value++;
      prefs.setInt('value',value);  
    });
  }

  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  _loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      value = prefs.getInt('value') ?? 0; // el ?? 0 significa que si es nulo se asigna un 0
    }); 
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferences',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Preferences'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                value.toString(),
                style: const TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(onPressed: _changeValue, child: const Text('Aumentar valor'))
          ],
        )),
      ),
    );
  }
}

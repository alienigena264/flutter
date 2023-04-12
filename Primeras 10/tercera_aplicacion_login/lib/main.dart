import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "MyApp",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: cuerpo());
  }
}

Widget cuerpo() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg2FpIh__0GTY50oU5Uom7gTJ10b7khL6eC-KrIq4F4ETzEhdywHLjTrCG-UNuNaxNplbF0qBzJyArn9_w9JzjNAq7GjIkk9t3Dq4swx5wR6UUdYnFHnwShBHLjqtyjnLoDEYfAj9svN-j3xr6gjwUJdepKE9Tz6xKLGCEv7RQrBJIhTbyjLLGXHFfZ/w1600/midnight-in-the-valley-wallpaper.jpg'),
          fit: BoxFit.cover),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Cambio de MainAxisAlignment.center a MainAxisAlignment.start
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 150,
          ),
          nombre(),
          usuario(),
          password(),
          signInButton(),
        ],
      ),
    ),
  );
}

Widget nombre() {
  return const Text('Sign in',
      style: TextStyle(
          color: Colors.white, fontSize: 45.2, fontWeight: FontWeight.bold));
}

Widget usuario(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: 'user',
        fillColor: Colors.white,
        filled: true, 
      ),
    ),
  );
}

Widget password(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
    child: const TextField(
      obscureText: true, // con esto evitamos que se vea la contrse~na
      decoration: InputDecoration(
        hintText: 'Password',
        fillColor: Colors.white,
        filled: true, 
      ),
    ),
  );
}

Widget signInButton(){
  return ElevatedButton(
    onPressed: (){},
    child: const Text('Enter')
    );
}
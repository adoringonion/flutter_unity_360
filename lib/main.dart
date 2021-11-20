import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/unity_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/unity': (context) =>  const UnityScreen(),
      },
    );
  }
}
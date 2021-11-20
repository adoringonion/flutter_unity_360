import 'package:flutter/material.dart';
import 'package:flutter_unity_360/provider/unity_provider.dart';
import 'screens/home_screen.dart';
import 'screens/unity_alt_screen.dart';
import 'screens/unity_screen.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";

final unityProvider = Provider((_) => UnityProvider());

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
        '/unity': (context) => const UnityAltScreen(),
      },
    );
  }
}

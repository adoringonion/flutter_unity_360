import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          child: const Text('Open Unity'),
          onPressed: () {
            Navigator.pushNamed(context, '/unity');
          },
        ),
      ),
    );
  }
}

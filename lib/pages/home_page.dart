import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 1, 22, 39),
          Color.fromARGB(255, 2, 35, 63),
          Color.fromARGB(255, 2, 63, 113),
        ])),
      ),
    );
  }
}

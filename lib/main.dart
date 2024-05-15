import 'package:flutter/material.dart';
import 'package:simpson/homer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: Column(
            children: [
            Homer()
          ],)
        ),
      ),
    );
  }
}

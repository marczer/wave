import 'package:flutter/material.dart';
import 'package:ui/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const myhomepage(),
    );
  }
}


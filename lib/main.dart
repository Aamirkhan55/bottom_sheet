import 'package:bottom_sheet/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Bottom Sheet',
      theme: ThemeData(
        primaryColor: Colors.tealAccent,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
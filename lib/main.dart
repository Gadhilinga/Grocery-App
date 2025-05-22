import 'package:flutter/material.dart';
import 'package:grocery/grocery_view/on_board_screen.dart';


void main() {

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      debugShowCheckedModeBanner: false,
      home: OnBoardPage(),
    );
  }
}


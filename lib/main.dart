import 'package:flutter/material.dart';
import 'package:miniproject/addtocart.dart';
import 'package:miniproject/gpage.dart';
import 'package:miniproject/grocery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GroceryExamples(),
    );
  }
}
      
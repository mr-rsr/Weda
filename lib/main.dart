import 'package:badal/Screens/homePage.dart';
import 'package:badal/Screens/index.dart';
import 'package:flutter/material.dart';
import 'Screens/home.dart';

void main() => runApp(const Badal());

class Badal extends StatelessWidget {
  const Badal({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Index(),);
  }
}

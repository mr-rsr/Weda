import 'package:weda/Screens/index.dart';
import 'package:flutter/material.dart';
void main() => runApp(const Badal());

class Badal extends StatelessWidget {
  const Badal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Index(),
    );
  }
}

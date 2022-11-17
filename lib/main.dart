import 'package:weda/Screens/index.dart';
import 'package:flutter/material.dart';

import 'Screens/splash.dart';
import 'Services/Networking.dart';

void main() => runApp(Badal());

class Badal extends StatefulWidget {
  const Badal({super.key});

  @override
  State<Badal> createState() => _BadalState();
}
 Networking network = Networking();
class _BadalState extends State<Badal> {
  @override
  initState() {
    super.initState();
    network.getData();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

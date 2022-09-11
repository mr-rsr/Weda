import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Badal',
      theme: ThemeData( brightness: Brightness.dark,
   appBarTheme: const AppBarTheme(
     color: Colors.white,
     //Icon theme at AppBar level
     iconTheme: IconThemeData(
       color: Colors.black,
     ),
   ),
   //Icon theme at app level
   iconTheme: IconThemeData(
     color: Colors.indigo.shade800,
   ),),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Badal'),
          backgroundColor: Colors.yellow,
          centerTitle: true,
        ),
      floatingActionButton: FloatingActionButton( child: const Icon(Icons.add) ,onPressed: ()=>{null}),
      ),
    );
  }
}

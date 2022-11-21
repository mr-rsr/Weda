import 'package:provider/provider.dart';
//import 'package:weda/Screens/index.dart';
import 'package:flutter/material.dart';
import 'package:weda/provider/weatherDataProvider.dart';

import 'Screens/splash.dart';
import 'Services/Networking.dart';

void main() { runApp(MultiProvider(providers: [ ChangeNotifierProvider(create: (_)=>WeatherDataProvider())
],
child:const Badal()));
}
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
   // network.getData();
    final data=Provider.of<WeatherDataProvider>(context,listen: false);
     data.getPostData();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
   
    );
  }
}

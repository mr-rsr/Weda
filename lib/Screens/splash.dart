import 'package:flutter/material.dart';
import 'package:weda/Screens/index.dart';

import '../Services/Networking.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  int splashtime = 2;
  // duration of splash screen on second
 // Networking network = Networking();
  @override
  void initState() {
    //network.getData();
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
          //pushReplacement = replacing the route so that
          //splash screen won't show on back button press
          //navigation to Home page.
          builder: (context) {
        return const Index();
      }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              //vertically align center
              children: <Widget>[
                const SizedBox(
                  height: 150,
                ),
                Image.asset("assets/images/weda.png",
                    width: 200, height: 200),
                const SizedBox(
                  height: 30,
                ),
                Column(children: <Widget>[
                  Image.asset("assets/images/W_logo.png"),
                  // const Text("Scan & Enter",style: TextStyle(
                  //   color: Colors.black,
                  //   fontSize: 20,
                  //   fontWeight: FontWeight.bold,

                  // ),)
                ])
              ]),
        ));
  }
}

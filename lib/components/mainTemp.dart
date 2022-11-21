import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weda/Services/Networking.dart';
import 'package:weda/modals/weatherData.dart';
import 'package:weda/constants.dart';

import '../provider/weatherDataProvider.dart';

Networking networking = Networking();

class MainTemp extends StatefulWidget {
  const MainTemp({
    Key? key,
  }) : super(key: key);

  @override
  State<MainTemp> createState() => _MainTempState();
}

class _MainTempState extends State<MainTemp> {
  String? temp;
  String? feelslike;
  String? condition;
  @override
  // void initState() {
  //   updateUi();
  //   super.initState();
  // }
  // void updateUi()async{
  //   var weatherData= (await networking.getData());
  //   setState(() {
  //     if(weatherData.temp!=null){
  //       temp=weatherData.temp;
  //     }
  //     else{
  //       temp='Error';
  //     }
  //     if(weatherData.feelslike!=null){
  //       feelslike=weatherData.feelslike;
  //     }
  //     else{
  //       feelslike='Error';
  //     }
  //     if(weatherData.condition!=null){
  //       condition=weatherData.condition;
  //     }
  //     else{
  //       condition='Error';
  //     }
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<WeatherDataProvider>(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                data.data==null?"null":data.data!.temp,
                style: GoogleFonts.rubik(
                  textStyle: const TextStyle(
                    color: fontColor,
                    fontSize: 95,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  '°C',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: fontColor,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              data.data==null?"null":data.data!.condition,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: fontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 50),
            decoration: BoxDecoration(
              color: const Color.fromARGB(50, 100, 150, 100),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Icon(
                      Icons.eco,
                      color: fontColor,
                      size: 18,
                    ),
                    Text(
                      'Feels like ${data.data==null?"null":data.data!.feelslike}°C',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          color: fontColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

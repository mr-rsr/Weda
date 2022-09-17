import 'package:badal/components/wDetail.dart';
import 'package:flutter/material.dart';
import 'package:badal/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherDetail extends StatelessWidget {
  const WeatherDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(40),
      color: Colors.black,
      shadowColor: Color.fromARGB(255, 24, 24, 24),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5,20,5,20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Wdetail(
                  title: "Wind",
                  value: "12 km/h",
                ),
                Wdetail(
                  title: "Humidity",
                  value: "12%",
                ),
                Wdetail(
                  title: "Pressure",
                  value: "12 mb",
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Wdetail(
                  title: "Sunrise",
                  value: "12:12",
                ),
                Wdetail(
                  title: "Sunset",
                  value: "12:12",
                ),
                Wdetail(
                  title: "Wind",
                  value: "12 km/h",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weda/constants.dart';

class DayForcast extends StatelessWidget {
  const DayForcast(
      {super.key, required this.time, required this.temp, required this.wind, this.icon,this.navIcon});
  final String time;
  final String temp;
  final IconData? icon;
  final String wind;
  final IconData? navIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
         Padding(
           padding: const EdgeInsets.only(bottom:8.0),
           child: Text(
            time,
            style: const TextStyle(
                color: timeColor, fontSize: 10, fontWeight: FontWeight.w500),
        ),
         ),
         Padding(
           padding: const EdgeInsets.only(bottom:2.0),
           child: Text(
            "  $temp",
            style:const TextStyle(
                color: fontColor, fontSize: 20, fontWeight: FontWeight.w500),
        ),
         ),
         Padding(
           padding: const EdgeInsets.only(bottom:8.0),
           child: Icon(
            icon??Icons.cloud,
            color: Colors.grey,
            size: 25,
        ),
         ),
        Padding(
          padding: const EdgeInsets.only(bottom:8.0),
          child: Row(
            children:  <Widget>[
              Icon(
                navIcon ?? Icons.cloud,
                color: fontColor,
                size: 15,
              ),
              Text(wind,
                  style: const TextStyle(
                      color: fontColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ],
    );
  }
}

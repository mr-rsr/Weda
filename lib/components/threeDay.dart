import 'package:flutter/material.dart';
import 'package:badal/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ThreeDay extends StatelessWidget {
  const ThreeDay(
      {super.key,
      required this.icon,
      required this.day,
      required this.status,
      required this.highTemp,
      required this.lowTemp});
  final IconData icon;
  final String day;
  final String highTemp;
  final String lowTemp;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 15, 8, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  <Widget>[
              Icon(
                icon,
                size: 20,
                color: gray,
              ),
              const SizedBox(
                width: 10,
              ),
              Text("$day\u00B7$status",
                  style: const TextStyle(
                      color: fontColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
            ],
          ),
           Text("$highTemp° / $lowTemp°",
              style:GoogleFonts.lato(textStyle: const TextStyle(
                  color: fontColor, fontSize: 15, fontWeight: FontWeight.bold)),),
        ],
      ),
    );
  }
}

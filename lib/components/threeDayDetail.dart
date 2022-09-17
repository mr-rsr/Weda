import 'package:badal/components/threeDay.dart';
import 'package:flutter/material.dart';
import 'package:badal/constants.dart';
import 'package:google_fonts/google_fonts.dart';
class ThreeDayDetail extends StatelessWidget {
  const ThreeDayDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(),
              Row(
                children: [
                  Text(
                    "More Details",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: fontColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios,
                      color: fontColor, size: 13)
                ],
              )
            ],
          ),
          const ThreeDay(
              icon: Icons.cloud,
              day: "Today",
              status: "Cloudy",
              highTemp: "30",
              lowTemp: "24"),
          const ThreeDay(
              icon: Icons.thunderstorm,
              day: "Tomorrow",
              status: "Thunderstorm",
              highTemp: "31",
              lowTemp: "24"),
          const ThreeDay(
              icon: Icons.thunderstorm,
              day: "Sat",
              status: "Thunderstorm",
              highTemp: "30",
              lowTemp: "24"),
        ],
      ),
    );
  }
}
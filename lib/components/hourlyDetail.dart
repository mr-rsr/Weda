import 'package:weda/components/daysForcast.dart';
import 'package:flutter/material.dart';
class HourlyDetail extends StatelessWidget {
  const HourlyDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          DayForcast(
            time: "Now",
            temp: "29°",
            wind: "13.5 km/h",
            icon: Icons.cloud,
            navIcon: Icons.near_me,
          ),
          DayForcast(
            time: "01:00pm",
            temp: "29°",
            wind: "13.5 km/h",
            icon: Icons.cloud,
            navIcon: Icons.navigation,
          ),
          DayForcast(
            time: "02:00pm",
            temp: "29°",
            wind: "13.5 km/h",
            icon: Icons.cloud,
            navIcon: Icons.navigation,
          ),
          DayForcast(
            time: "03:00pm",
            temp: "29°",
            wind: "13.5 km/h",
            icon: Icons.cloud,
            navIcon: Icons.navigation,
          ),
        ],
      ),
    );
  }
}

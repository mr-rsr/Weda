import 'package:badal/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badal/components/daysForcast.dart';
import 'package:badal/components/threeDay.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    initState() {
      super.initState();
      precacheImage(
          const AssetImage("assets/images/background_3.jpg"), context);
    }

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage("assets/images/background_3.jpg"),
          //   fit: BoxFit.cover,
          // ),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              /*Color.fromARGB(255, 109, 196, 228),*/ Color(0xff000000),
              Color(0xff242424)
            ],
          ),
          // image: DecorationImage(
          //     image: AssetImage("assets/images/2157.png"),
          //     fit: BoxFit.contain,
          //     alignment: Alignment.topCenter,
          //     opacity: 0.8),
          // color: Colors.teal
        ),
        child: Container(
          color: const Color.fromARGB(50, 0, 0, 0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            // appBar: AppBar(
            //   backgroundColor: Colors.transparent,
            //   elevation: 0,
            //   title: Text(
            //     'WEDA',
            //     style: GoogleFonts.acme(
            //         textStyle:
            //             const TextStyle(color: fontColor, letterSpacing: .8)),
            //   ),
            //   actions: [
            //     IconButton(
            //         onPressed: () => {null},
            //         icon: const Icon(Icons.search),
            //         color: fontColor,
            //         iconSize: 25),
            //   ],
            // ),
            body: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                  child: Material(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    color: Colors.black,
                    shadowColor: Color.fromARGB(255, 24, 24, 24),
                    elevation: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'WEDA',
                                style: GoogleFonts.acme(
                                    textStyle: const TextStyle(
                                        color: fontColor,
                                        letterSpacing: .8,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                              ),
                              IconButton(
                                  onPressed: () => {null},
                                  icon: const Icon(Icons.search),
                                  color: fontColor,
                                  iconSize: 25),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Center(
                            child: Text(
                              'Raigarh',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: fontColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
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
                              '29',
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
                            'Cloudy',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  const Icon(
                                    Icons.eco,
                                    color: fontColor,
                                    size: 18,
                                  ),
                                  Text(
                                    'AQI 21',
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
                  ),
                ),
                Padding(
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
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(50, 100, 150, 100),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(55, 10, 55, 10),
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Center(
                          child: Text(
                            '5-day Forecast',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                color: fontColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Padding(
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
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  child: Column(children: [
                    Text(
                      "Weather details",
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          color: fontColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// SizedBox(
//               height: 35,
//               child: TextFormField(
//                 textAlign: TextAlign.center,
//                 decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(35),
//                     borderSide: const BorderSide(width: 2, color: Colors.white),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(width: 2, color: Colors.white),
//                     borderRadius: BorderRadius.circular(35),
//                   ),
//                   hintText: 'Search city',
//                   hintStyle: const TextStyle(fontSize: 10,textBaseline: TextBaseline.ideographic,color: Colors.white),
//                   suffixIcon: IconButton(
//                     onPressed: () => {null},
//                     icon: const Icon(Icons.search,),
//                     color: Colors.white,
//                     iconSize: 20,
//                   ),
//                 ),
//               ),
//             ),

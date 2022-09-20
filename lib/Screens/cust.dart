import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weda/constants.dart';

import '../components/hourlyDetail.dart';
import '../components/threeDayDetail.dart';
import '../components/weatherDetail.dart';

class Custom extends StatefulWidget {
  const Custom({super.key});

  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) =>[
          SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Weather",
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              // background: Image.asset(
              //   "assets/images/1.jpg",
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
        ],
        body:ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                  child: Material(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    color: Colors.black,
                    shadowColor: const Color.fromARGB(255, 24, 24, 24),
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
                const ThreeDayDetail(),
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
                const HourlyDetail(),
                const SizedBox(
                  height: 35,
                ),
                Column(children: [
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
                  const Divider(
                    color: fontColor,
                    thickness: 1,
                    indent: 110,
                    endIndent: 110,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const WeatherDetail(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Powered by Raj Aryan",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: fontColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ])
              ],
            ), 
        
   //SliverList
   //<Widget>[]
 ) ,
    );
  }
}

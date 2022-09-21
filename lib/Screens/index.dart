import 'package:weda/components/hourlyDetail.dart';
import 'package:weda/components/weatherDetail.dart';
import 'package:weda/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/header.dart';
import '../components/mainTemp.dart';
import '../components/threeDayDetail.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Color.fromARGB(255, 18, 18, 18), Color(0xff242424)],
          ),
        ),
        child: Container(
          color: const Color.fromARGB(50, 0, 0, 0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                Heading(innerBoxIsScrolled: innerBoxIsScrolled),
              ],
              body: Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.fromSwatch().copyWith(
                    secondary: Colors.transparent,
                  ),
                ),
                child: ListView(
                  children: <Widget>[
                    const SizedBox(
                      height: 40,
                    ),
                    const MainTemp(),
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
                      // const Divider(
                      //   color: fontColor,
                      //   thickness: 1,
                      //   indent: 100,
                      //   endIndent: 100,
                      // ),
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
                      const SizedBox(
                        height: 20,
                      ),
                    ])
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

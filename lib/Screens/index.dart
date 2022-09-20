import 'package:weda/components/hourlyDetail.dart';
import 'package:weda/components/weatherDetail.dart';
import 'package:weda/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/threeDayDetail.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
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
              /*Color.fromARGB(255, 109, 196, 228),*/ Color.fromARGB(
                  255, 18, 18, 18),
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
            body: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  shape: const ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(50))),
                  floating: true,
                  pinned: true,
                  snap: false,
                  backgroundColor:
                      innerBoxIsScrolled ? Colors.black : Colors.transparent,
                  // backgroundColor:const  Color.fromARGB(
                  // 255, 18, 18, 18),
                  automaticallyImplyLeading: false,
                  shadowColor: Colors.transparent,
                  expandedHeight: 170,
                  //expandedHeight: 100,
                  //leadingWidth: 16.w,
                  //centerTitle: true,
                  // title: AppBar(
                  //   backgroundColor: Colors.transparent,
                  //   elevation: 0,
                  //   title: Text(
                  //     'WEDA',
                  //     style: GoogleFonts.acme(
                  //         textStyle: const TextStyle(
                  //             color: fontColor, letterSpacing: .8)),
                  //   ),
                  //   actions: [
                  //     IconButton(
                  //         onPressed: () => {null},
                  //         icon: const Icon(Icons.search),
                  //         color: fontColor,
                  //         iconSize: 25),
                  //   ],
                  // ),
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    expandedTitleScale: 2,
                    centerTitle: true,
                    title: Text(
                      'Raigarh',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            color: fontColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    background: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      title: Text(
                        'WEDA',
                        style: GoogleFonts.acme(
                            textStyle: const TextStyle(
                                color: fontColor, letterSpacing: .8)),
                      ),
                      actions: [
                        IconButton(
                            onPressed: () => {null},
                            icon: const Icon(Icons.search),
                            color: fontColor,
                            iconSize: 25),
                      ],
                    ),
                    // background: Image.asset(
                    //   "assets/images/1.jpg",
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
              ],
              body: ListView(
                children: <Widget>[
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                    child: Material(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.black,
                      shadowColor: const Color.fromARGB(255, 24, 24, 24),
                      elevation: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Padding(
                          //   padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: <Widget>[
                          //       // Text(
                          //       //   'WEDA',
                          //       //   style: GoogleFonts.acme(
                          //       //       textStyle: const TextStyle(
                          //       //           color: fontColor,
                          //       //           letterSpacing: .8,
                          //       //           fontSize: 20,
                          //       //           fontWeight: FontWeight.w500)),
                          //       // ),
                          //       IconButton(
                          //           onPressed: () => {null},
                          //           icon: const Icon(Icons.search),
                          //           color: fontColor,
                          //           iconSize: 25),
                          //     ],
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.only(top: 18.0),
                          //   child: Center(
                          //     child: Text(
                          //       'Raigarh',
                          //       style: GoogleFonts.roboto(
                          //         textStyle: const TextStyle(
                          //             color: fontColor,
                          //             fontSize: 30,
                          //             fontWeight: FontWeight.w500),
                          //       ),
                          //     ),
                          //   ),
                          // ),
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
                      indent: 100,
                      endIndent: 100,
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
    );
  }
}

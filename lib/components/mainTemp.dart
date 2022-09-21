import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weda/constants.dart';

class MainTemp extends StatelessWidget {
  const MainTemp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              padding:
                  const EdgeInsets.fromLTRB(15, 6, 15, 6),
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
    );
  }
}

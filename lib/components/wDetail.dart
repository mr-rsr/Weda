import 'package:flutter/material.dart';
import 'package:weda/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Wdetail extends StatelessWidget {
  const Wdetail({super.key,required this.value, required this.title});
  final String value;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: timeColor,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(
                  value,
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: fontColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

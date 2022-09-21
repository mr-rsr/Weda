import'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weda/constants.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key, required this.innerBoxIsScrolled}) : super(key: key);
  final bool innerBoxIsScrolled;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(50))),
      floating: true,
      pinned: true,
      snap: false,
      backgroundColor: innerBoxIsScrolled ? Colors.black : Colors.transparent,
      automaticallyImplyLeading: false,
      shadowColor: Colors.transparent,
      expandedHeight: 170,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        expandedTitleScale: 2,
        centerTitle: true,
        title: Text(
          'Raigarh',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
                color: fontColor, fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        background: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'WEDA',
            style: GoogleFonts.acme(
                textStyle:
                    const TextStyle(color: fontColor, letterSpacing: .8)),
          ),
          actions: [
            IconButton(
                onPressed: () => {null},
                icon: const Icon(Icons.search),
                color: fontColor,
                iconSize: 25),
          ],
        ),
      ),
    );}}
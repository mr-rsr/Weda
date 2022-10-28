import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weda/Services/Networking.dart';
import 'package:weda/constants.dart';
import '../Services/weatherData.dart';
Networking networking = Networking();

class Heading extends StatefulWidget {
  Heading({Key? key, required this.innerBoxIsScrolled}) : super(key: key);
  final bool innerBoxIsScrolled;

  @override
  State<Heading> createState() => _HeadingState();
}

class _HeadingState extends State<Heading> {
  String? city;
  @override
  void initState() {
    updateUi();
    super.initState();
  }
  void updateUi() async{
    var weatherData=WeatherData.fromJson(await networking.getData());
    setState(() {
      if(weatherData.city!=null){
        city=weatherData.city;
      }
      else{
        city='Error';
      }
    });
  }

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
      backgroundColor:
          widget.innerBoxIsScrolled ? Colors.black : Colors.transparent,
      automaticallyImplyLeading: false,
      shadowColor: Colors.transparent,
      expandedHeight: 170,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        expandedTitleScale: 2,
        centerTitle: true,
        title: Text(
          "$city",
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
    );
  }
}

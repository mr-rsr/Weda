import 'package:provider/provider.dart';
import 'package:weda/components/wDetail.dart';
import 'package:flutter/material.dart';
import '../Services/Networking.dart';
import '../provider/weatherDataProvider.dart';
Networking networking = Networking();


class WeatherDetail extends StatefulWidget {
  const WeatherDetail({super.key});

  @override
  State<WeatherDetail> createState() => _WeatherDetailState();
}

class _WeatherDetailState extends State<WeatherDetail> {
//   String? wind;
//   String? humidity;
//   String? uv;
//   String? pressure;
//  @override
//   void initState() {
//     updateUi();
//     super.initState();
//   }
//   void updateUi()
//     async{
//     var weatherData=await networking.getData()  ;
//     setState(() {
//       if(weatherData.wind!=null){
//         wind=weatherData.wind;
//       }
//       else{
//         wind='Error';
//       }
//       if(weatherData.humidity!=null){
//         humidity=weatherData.humidity;
//       }
//       else{
//         humidity='Error';
//       }
//       if(weatherData.uv!=null){
//         uv=weatherData.uv;
//       }
//       else{
//         uv='Error';
//       }
//       if(weatherData.pressure!=null){
//         pressure=weatherData.pressure;
//       }
//       else{
//         pressure='Error';
//       }
      
//     });
//   }
  @override
  Widget build(BuildContext context) {
     final data=Provider.of<WeatherDataProvider>(context);
    return Material(
      borderRadius: BorderRadius.circular(40),
      color: Colors.black,
      shadowColor: const Color.fromARGB(255, 24, 24, 24),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 30, 5, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Wdetail(
                  title: "Wind",
                  value: "${data.data==null?"null":data.data!.wind} km/h",
                ),
                Wdetail(
                  title: "Humidity",
                  value: "${data.data==null?"null":data.data!.humidity} %",
                ),
                
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Wdetail(
                  title: "Pressure",
                  value: "${data.data==null?"null":data.data!.pressure} mb",
                ),
                Wdetail(
                  title: "UV",
                  value: data.data==null?"null":data.data!.uv,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

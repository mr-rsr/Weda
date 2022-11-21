import 'dart:convert';
import '../provider/spData.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:weda/Services/location.dart';
import 'package:weda/components/weatherDetail.dart';
import 'package:weda/modals/weatherData.dart';
SpData spData = SpData();
class Networking {
  Future<WeatherData> getData() async {
    Location locating = Location();
    await locating.determinePosition();
    String url =
        'http://api.weatherapi.com/v1/current.json?key=150670a647c74f3f9fb170851222206&q=${locating.latitude},${locating.longitude}&aqi=no&alerts=no';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      spData.addStringToSF(data);
      final decodedData = jsonDecode(data);
      return WeatherData.fromJson(decodedData!);
      
    } else {
      throw 'Error';
    }
  }
}

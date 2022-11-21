import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weda/modals/spDataStored.dart';
import 'package:weda/modals/weatherData.dart';


class SpData{
  addStringToSF(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('stringData', data);
  }
  getSpData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String? stringValue = prefs.getString('stringData');
    return stringValue;
  }
 Future<WeatherData> convertStringTojson() async {
    String? stringValue = await getSpData();
    final decodedData = jsonDecode(stringValue!);
    debugPrint(WeatherData.fromJson(decodedData!).toString());
    return WeatherData.fromJson(decodedData!);
  }
}
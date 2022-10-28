import 'dart:convert';

// import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:weda/Services/location.dart';

class Networking {
  Future<Map<String, dynamic>> getData() async {
    Location locating = Location();
    await locating.determinePosition();
    String url =
        'http://api.weatherapi.com/v1/current.json?key=150670a647c74f3f9fb170851222206&q=${locating.latitude},${locating.longitude}&aqi=no&alerts=no';
    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic>? decodedData;
    if (response.statusCode == 200) {
      String data = response.body;

      decodedData = jsonDecode(data);
      // debugPrint(decodedData.toString());
      return decodedData!;
    } else {
      return decodedData!;
    }
  }
}

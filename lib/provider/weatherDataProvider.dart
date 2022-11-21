import 'package:flutter/cupertino.dart';
import 'package:weda/modals/weatherData.dart';

import '../Services/Networking.dart';

Networking networking = Networking();

class WeatherDataProvider extends ChangeNotifier {
  WeatherData? data;
  bool loading = false;

  getPostData() async {
    loading = true;
    data = (await networking.getData());
    loading = false;
    notifyListeners();
  }
}

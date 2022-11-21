class SpDataStored {
  SpDataStored(
      {required this.temp,
      required this.feelslike,
      required this.wind,
      required this.humidity,
      required this.uv,
      required this.pressure,
      required this.condition,
      required this.city});
  final String temp;
  final String feelslike;
  final String wind;
  final String humidity;
  final String uv;
  final String pressure;
  final String condition;
  final String city;
  factory SpDataStored.fromJson(Map<String, dynamic> json) {
    return SpDataStored(
      temp: json['current']['temp_c'].round().toString(),
      feelslike: json['current']['feelslike_c'].round().toString(),
      wind: json['current']['wind_kph'].round().toString(),
      humidity: json['current']['humidity'].round().toString(),
      uv: json['current']['uv'].round().toString(),
      pressure: json['current']['pressure_in'].round().toString(),
      condition: json['current']['condition']['text'].toString(),
      city: json['location']['name'].toString(),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'temp': temp,
      'feelslike': feelslike,
      'wind': wind,
      'humidity': humidity,
      'uv': uv,
      'pressure': pressure,
      'condition': condition,
      'city': city,
    };
  }
}
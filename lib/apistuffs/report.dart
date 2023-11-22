import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wheather_app/apistuffs/weathermodel.dart';

class Report {
  getweather(String? city) async {
    var url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=43ea6baaad7663dc17637e22ee6f78f2";
    final response = await http.get(Uri.parse(url));

    var responseBody = response.body;
    print(response.body);

    try {
      if (response.statusCode == 200) {
        return WeatherModel.fromJson(json.decode(responseBody));
      } else {
        return Exception();
      }
    } catch (e) {
      throw Exception;
    }
  }
}

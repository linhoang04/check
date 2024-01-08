import 'package:dio/dio.dart';
import 'package:project1/model/weather_model.dart';

class WeatherRepo {
  Future<Weather> fetchWeather(double latitude, double longitude) async {
    Dio dio = Dio();
    final response = await dio.get(
        "https://api.open-meteo.com/v1/forecast?&current_weather=true",
        queryParameters: {
          'latitude': latitude,
          'longitude': longitude,
        });
    if (response.statusCode == 200) {
      final dataBody = response.data;
      return Weather.fromJson(dataBody);
    } else {
      throw 'Error';
    }
  }
}

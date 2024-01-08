import 'package:get/get.dart';
import 'package:project1/model/city_model.dart';
import 'package:project1/model/weather_model.dart';
import 'package:project1/repositories/weather_repo.dart';

class WeatherController extends GetxController with StateMixin<Weather> {
  final CityModel city;

  WeatherController({required this.city}) {
    fetchWeather();
  }
  WeatherRepo weathers = WeatherRepo();
  void fetchWeather() async {
    try {
      final weatherDataList =
          await weathers.fetchWeather(city.latitude, city.longitude);
      change(weatherDataList, status: RxStatus.success());
    } catch (e) {
      print('$e');
    }
  }
}

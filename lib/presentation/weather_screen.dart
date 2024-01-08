import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controller/weather_controller.dart';
import 'package:project1/model/city_model.dart';

class WeatherScreen extends GetView<WeatherController> {
  const WeatherScreen({super.key, required this.model});
  final CityModel model;
  @override
  Widget build(BuildContext context) {
    final WeatherController weatherController =
        Get.put(WeatherController(city: model)); 
    return Center(
      child: Column(
        children: [
          Expanded(
            child: weatherController.obx((state) {
              if (state != null) {
                return ListTile(
                  title: Text(state.toString()),
                );
              } else {
                return const Center(child: Text('No value'));
              }
            }),
          )
        ],
      ),
    );
  }
}

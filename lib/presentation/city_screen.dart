import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/controller/city_controller.dart';
import 'package:project1/presentation/weather_screen.dart';

class CityScreen extends StatelessWidget {
  const CityScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final CityController cityController = Get.put(CityController());
    return Column(
      children: [
        TextField(
          controller: cityController.textEditingController,
          decoration: const InputDecoration(hintText: 'hanoi'),
          onChanged: (location) {
            cityController.fetchCity(location);
          },
        ),
        const SizedBox(
          height: 5,
        ),
        Expanded(
          child: Obx(() => ListView.builder(
                itemCount: cityController.listCitys.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title:
                        Text(cityController.listCitys[index].name.toString()),
                    onTap: () {
                      Get.to(() => (WeatherScreen(
                            model: cityController.listCitys[index],
                          )));
                    },
                  );
                },
              )),
        )
      ],
    );
  }
}

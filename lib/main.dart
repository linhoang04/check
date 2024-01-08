import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/presentation/city_screen.dart';
// import 'package:project1/repositories/call_handle_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User'),
        ),
        body: const SafeArea(child: CityScreen()),
      ),
    );
  }
}

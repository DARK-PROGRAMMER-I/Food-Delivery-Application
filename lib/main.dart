import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home/homePageFood.dart';
import 'package:food_delivery_app/pages/popularFood.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopularFoodPage(),
    );
  }
}

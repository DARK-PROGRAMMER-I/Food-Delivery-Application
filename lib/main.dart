import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/controllers/popularProductsCtr.dart';
import 'package:food_delivery_app/controllers/recommended_product_ctr.dart';
import 'package:food_delivery_app/pages/home/homePageFood.dart';
import 'package:food_delivery_app/pages/popularFood.dart';
import 'package:get/get.dart';

import 'helper/dependencies.dart' as dep;

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductsCtr>().getPopProductList();
    Get.find<RecommendedProductsCtr>().getRecProductList();
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food App',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: FoodHomePage(),
          );
        }
    );
  }
}

import 'package:food_delivery_app/controllers/popularProductsCtr.dart';
import 'package:food_delivery_app/data/api/api_clinet.dart';
import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future init()async{
  // Api Client
  Get.lazyPut(() => ApiClient(appBaseUrl: 'https://www.relexai.com'));


  // Repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));


  // Controllers
  Get.lazyPut(() => PopularProductsCtr(popularProductRepo: Get.find()));
}
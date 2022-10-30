import 'package:food_delivery_app/controllers/popularProductsCtr.dart';
import 'package:food_delivery_app/controllers/recommended_product_ctr.dart';
import 'package:food_delivery_app/data/api/api_clinet.dart';
import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:food_delivery_app/data/repository/recommended_product_repo.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:get/get.dart';

Future init()async{
  // Api Client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));


  // Repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));


  // Controllers
  Get.lazyPut(() => PopularProductsCtr(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductsCtr(recommendedProductRepo: Get.find()));
}
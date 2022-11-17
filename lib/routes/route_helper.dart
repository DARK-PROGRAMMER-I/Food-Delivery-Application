import 'package:food_delivery_app/pages/food/recommended_food_details.dart';
import 'package:food_delivery_app/pages/home/homePageFood.dart';
import 'package:food_delivery_app/pages/popularFood.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popular = "/popular";
  static const String recommended = "/recommended";


 static List<GetPage> routes = [
   GetPage(name: initial, page: ()=> FoodHomePage()),
   GetPage(name: popular, page: ()=> PopularFoodPage()),
   GetPage(name: recommended, page: ()=> RecommendedFoodDetails()),
 ];
}
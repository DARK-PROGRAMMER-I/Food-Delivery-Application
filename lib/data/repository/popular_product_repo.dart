import 'package:food_delivery_app/data/api/api_clinet.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList()async{
    return await apiClient.getData(Uri.parse(AppConstants.POP_PROD_URI));
  }
}
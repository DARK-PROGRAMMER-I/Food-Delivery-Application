import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../data/repository/recommended_product_repo.dart';
import '../models/product_model.dart';

class RecommendedProductsCtr extends GetxController{
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductsCtr({required this.recommendedProductRepo});


  List<ProductModel> _recProductList= [];
  List<ProductModel> get recProductList => _recProductList;

  Future<void> getRecProductList()async{
    Response response = await recommendedProductRepo.getRecommendedProductList();

    if(response.status.code == 200){
      _recProductList = [];
      _recProductList.addAll(Product.fromJson(response.body).products);
      print(_recProductList[0]);

      update();
    }else{
      print('NO Data');
      // Do something
    }
  }
}
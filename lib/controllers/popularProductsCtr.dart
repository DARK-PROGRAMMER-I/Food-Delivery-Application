import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../models/product_model.dart';

class PopularProductsCtr extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductsCtr({required this.popularProductRepo});


  List<ProductModel> _popProductList= [];
  List<ProductModel> get popProductList => _popProductList;

  Future<void> getPopProductList()async{
    Response response = await popularProductRepo.getPopularProductList();

    if(response.status.code == 200){
      _popProductList = [];
      _popProductList.addAll(Product.fromJson(response.body).products);
      print(_popProductList[0]);

      update();
    }else{
      print('NO Data');
      // Do something
    }
  }
}
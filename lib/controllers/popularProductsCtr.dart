import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductsCtr extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductsCtr({required this.popularProductRepo});


  List<dynamic> _popProductList= [];
  List<dynamic> get popProductList => _popProductList;

  Future<void> getPopProductList()async{
    Response response = await popularProductRepo.getPopularProductList();
    if(response.status == 200){
      _popProductList = [];
      // _popProductList = response;
      update();
    }else{
      // Do something
    }
  }
}
import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../models/product_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo}){
    List<ProductModel> _popularProductList = [];
    List<ProductModel> popularProductList = _popularProductList;
    //List<ProductModel> get popularProductList => _popularProductList;
    Future<void> getPopularProductList() async{
      Response response = await popularProductRepo.getPopularProductList();
      if(response.statusCode == 200){
         print("Got Products");
        _popularProductList = [];
        _popularProductList.addAll(Product.fromJson(response.body).products);
        update();
      }else{

      }
    }
  }
}
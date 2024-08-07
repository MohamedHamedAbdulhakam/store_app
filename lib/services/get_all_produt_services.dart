import 'dart:convert';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/produt_model.dart';

class GetAllProdutServices {
  Future<List<ProductModel>> getALLProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}

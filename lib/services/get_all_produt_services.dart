import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/produt_model.dart';

class GetAllProdutServices {
  Future<List<ProdutModel>> getALLProducts() async {
    http.Response response = await http.get(Uri.parse(
        'https://fakestoreapi.com/products/category/:category_name?='));
    List<dynamic> data = jsonDecode(response.body);
    List<ProdutModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProdutModel.fromJson(data[i]));
    }
    return productList;
  }
}

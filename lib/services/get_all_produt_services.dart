import 'dart:convert';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/produt_model.dart';

class GetAllProdutServices {
  Future<List<ProductModel>> getALLProducts() async {
    List<dynamic>? data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productList = [];
    if (data != null) {
      for (int i = 0; i < data.length; i++) {
        productList.add(ProductModel.fromJson(data[i]));
       
      }
      return productList;
    } else {
      return [];
    }
  }
}



// import 'dart:convert';

// import 'package:http/http.dart';
// import 'package:store/helper/api.dart';
// import 'package:store/models/product_model.dart';

// class AllProductsService {
//   Future<List<ProductModel>> getAllProducts() async {
//     List<dynamic> data =
//         await Api().get(url: 'https://fakestoreapi.com/products');

//     List<ProductModel> productsList = [];
//     for (int i = 0; i < data.length; i++) {
//       productsList.add(
//         ProductModel.fromJson(data[i]),
//       );
//     }
//     return productsList;
//   }
// }
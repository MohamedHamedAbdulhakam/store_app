import 'package:store_app/helper/api.dart';
import 'package:store_app/models/produt_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().put(urL: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category
      'id'=id,
    });
    return ProductModel.fromJson(data);
  }
}

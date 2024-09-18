import 'package:flutter/material.dart';
import 'package:store_app/models/produt_model.dart';
import 'package:store_app/screens/update_product_page.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.product, super.key});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 200,
            height: 120,
            child: Card(
              color: Colors.white,
              elevation: 6,
              shape: const BeveledRectangleBorder(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        product.title.substring(0, 6),
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(r'$' '${product.price.toString()}'),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Positioned(
              left: 85,
              bottom: 150,
              child: Image.network(
                product.image,
                height: 100,
                width: 100,
              ))
        ],
      ),
    );
  }
}

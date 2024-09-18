import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/models/produt_model.dart';
import 'package:store_app/services/get_all_produt_services.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(FontAwesomeIcons.cartPlus))
        ],
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'New Trend',
          style: GoogleFonts.protestGuerrilla(
              textStyle: const TextStyle(
            fontSize: 20,
          )),
        )),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 70, bottom: 10),
        child: FutureBuilder(
          future: GetAllProdutServices().getALLProducts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              List<ProductModel> products = snapshot.data!;
              if (products.isEmpty) {
                return const Center(child: Text('No Products Found'));
              }
              return GridView.builder(
                itemCount: products.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10, crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return CustomCard(product: products[index]);
                },
              );
            }
            return const Center(child: Text('Something went wrong'));
          },
        ),
      ),
    );
  }
}

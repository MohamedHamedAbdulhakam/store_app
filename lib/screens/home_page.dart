import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          padding: const EdgeInsets.only(left: 10,right: 10,top: 70,bottom: 10),
          child: GridView.builder(
            clipBehavior: Clip.none,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisSpacing: 10,crossAxisCount: 2),
              itemBuilder: (context, index) {
                return const CustomCard();
              }),
        ));
  }
}

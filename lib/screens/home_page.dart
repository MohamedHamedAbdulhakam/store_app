import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.cart))
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
    );
  }
}

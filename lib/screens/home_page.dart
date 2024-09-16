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
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 200,
              height: 120,
              child:  Card(
                color: Colors.white,
                elevation: 6,
                shape: const BeveledRectangleBorder(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Handbag',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(r'$33'),
                            Icon(
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
                      left: 95,
                      bottom: 65,
            child: Image.network('https://up.yimg.com/ib/th?id=OIP.M56Z_XU7r_UeDFR05bfkzwHaE7&pid=Api&rs=1&c=1&qlt=95&w=152&h=101',height: 100,width: 100,))
          ],
        ),
      ),
    );
  }
}

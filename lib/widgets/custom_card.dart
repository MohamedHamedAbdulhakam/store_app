import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 200,
          height: 120,
          child: const Card(
            color: Colors.white,
            elevation: 6,
            shape:  BeveledRectangleBorder(),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Text(
                      'Handbag',
                      style: TextStyle(color: Colors.grey),
                    ),
                     Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
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
            left: 85,
            bottom: 150,
            child: Image.network(
              'https://up.yimg.com/ib/th?id=OIP.M56Z_XU7r_UeDFR05bfkzwHaE7&pid=Api&rs=1&c=1&qlt=95&w=152&h=101',
              height: 100,
              width: 100,
            ))
      ],
    );
  }
}

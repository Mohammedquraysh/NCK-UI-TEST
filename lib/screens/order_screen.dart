import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key,
    required this.orderText,
    required this.orderAmount,
    required this.orderDate,
    required this.image
  }) : super(key: key);


  final String orderText;
  final String orderAmount;
  final String orderDate;
  final String image;

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Image.asset(image, scale: 3),
          Padding(
            padding: const EdgeInsets.only(right: 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  orderText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  orderDate,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Text(orderAmount,
            style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
              fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}

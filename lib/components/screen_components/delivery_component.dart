import 'package:flutter/material.dart';

class DeliveryComponent extends StatelessWidget {
  const DeliveryComponent({Key? key,
    required this.orderText,
    required this.orderDate,
  }) : super(key: key);


  final String orderText;
  final String orderDate;

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  orderText,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  orderDate,
                  style: const TextStyle(
                    color: Color(0xFF179249),
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.black54,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
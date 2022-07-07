import 'package:flutter/material.dart';

class PaymentComponent extends StatelessWidget {
  const PaymentComponent({Key? key,
    required this.image,
    required this.retailName,
    required this.backgroundColor,
  }) : super(key: key);

  final String image;
  final String retailName;
  final Color backgroundColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image, scale: 3,),
            Text(retailName,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black
              ),
            ),
            const CircleAvatar(
              radius: 10,
              backgroundColor: Colors.black54,
              child: CircleAvatar(
                backgroundColor: Colors.white60,
                radius: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

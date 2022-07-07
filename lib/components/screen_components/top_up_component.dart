import 'package:flutter/material.dart';

class TopUpComponent extends StatelessWidget {
  const TopUpComponent({Key? key,
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
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.white
                ),
              ),
              const Icon(Icons.keyboard_arrow_right, color: Colors.white,)
            ],
          ),
        ),
    );
  }
}

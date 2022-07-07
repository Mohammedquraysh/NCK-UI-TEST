
import 'package:flutter/material.dart';

class CylinderComponent extends StatelessWidget {
  const CylinderComponent({Key? key,
    required this.retailName,
    required this.backgroundColor,
  }) : super(key: key);

  final String retailName;
  final Color backgroundColor;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 50,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(retailName,
              style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.black54
              ),
            ),
            const Icon(Icons.keyboard_arrow_down, color: Colors.black54,)
          ],
        ),
      ),
    );
  }
}
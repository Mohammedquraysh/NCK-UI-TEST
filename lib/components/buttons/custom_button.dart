
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,

    required this.onPressed,
    required this.text,
    required this.backgroundColor,
    required this.textColor,

  }) : super(key: key);
  final VoidCallback  onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 55,
      width: size.width * 0.9,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          minimumSize:  const Size(20, 40),
          padding:  const EdgeInsets.all(10.0),
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              width: 2.0,
              color: Color(0xFF179249)
            ),
            borderRadius:  BorderRadius.all(
              Radius.circular(10),

            ),
          ),
        ),
        child: Text(text,
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 20.0,
              color: textColor
          ),
        ),
      ),
    );
  }
}

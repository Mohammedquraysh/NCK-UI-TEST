import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {


  ButtonCard({Key? key,

    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed

  }) : super(key: key);

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback  onPressed;



  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 55.0,
      width: size.width * 0.4,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          minimumSize: const Size(20, 40),
          padding: const EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 0.0,
            ),
            borderRadius:  BorderRadius.all(
              Radius.circular(10.0),

            ),
          ),
        ),
        child: Text(text,
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 20.0,
            color: textColor,

          ),

        ),
      ),
    );
  }
}

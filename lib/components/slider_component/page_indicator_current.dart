import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageIndicatorCurrent extends StatelessWidget {
  const PageIndicatorCurrent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
    );
  }
}

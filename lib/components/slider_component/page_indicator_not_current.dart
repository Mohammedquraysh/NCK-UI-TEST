
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageIndicatorNotCurrent extends StatelessWidget {
  const PageIndicatorNotCurrent({Key? key,
    required this.index,
    required this.pageNo}) : super(key: key);

  final int pageNo;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.circle,
      size: 8,
      color: pageNo==index? Colors.amber: Colors.grey,
    );
  }
}

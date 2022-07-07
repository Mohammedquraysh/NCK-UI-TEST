import 'package:flutter/material.dart';

class SliderItem extends StatefulWidget {
  const SliderItem({Key? key}) : super(key: key);

  @override
  State<SliderItem> createState() => _SliderItemState();
}

class _SliderItemState extends State<SliderItem> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7.0, left: 10),
            child: Container(

              color: Colors.white,
              child: Text('Cylinder ID: #942',
                style: TextStyle(
                  color: Colors. black,
                 // backgroundColor: Colors.white,
                  background: Paint()
                    ..strokeWidth = 15
                    ..color = Colors.white
                    ..strokeJoin = StrokeJoin.round
                    ..strokeCap = StrokeCap.round
                    ..style = PaintingStyle.stroke,

                ),

              ),
            ),
          ),

          Row(
            children:  [
              Text('25',
              style: TextStyle(
                fontSize: 70,
                color: Colors.white,
                fontWeight: FontWeight.bold
               ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text('kg',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110.0, top: 10),
                child: Image.asset('assets/images/can_image.png', scale: 5,),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0.0, left: 10, bottom: 15),
            child: Container(

              color: Colors.white,
              child: Text('last purchase was 2 hours ago',
                style: TextStyle(
                  color: Colors.green,
                  // backgroundColor: Colors.white,
                  background: Paint()
                    ..strokeWidth = 15
                    ..color = Colors.white
                    ..strokeJoin = StrokeJoin.round
                    ..strokeCap = StrokeCap.round
                    ..style = PaintingStyle.stroke,

                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}

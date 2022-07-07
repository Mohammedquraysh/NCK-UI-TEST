
import 'package:flutter/material.dart';
import 'package:nck_ui_test/components/slider_component/page_indicator_current.dart';
import 'package:nck_ui_test/components/slider_component/page_indicator_not_current.dart';
import 'package:nck_ui_test/components/slider_component/slider_item.dart';

class Sliders extends StatefulWidget {
  const Sliders({Key? key,}) : super(key: key);



  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  late final PageController pageController;
  int pageNo = 0;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (index) {
              pageNo = index;
              setState(() {});
            },
            itemBuilder: (_, index) {
              return AnimatedBuilder(
                animation: pageController,
                builder: (ctx, child) {
                  return child!;
                },
                child: Container(

                  margin:  EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                    boxShadow:  const [
                      BoxShadow(color: Colors.black26, spreadRadius: 0.3),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  const EdgeInsets.only(left: 13.0, top: 10.0),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            1,
                                (index) => SizedBox(
                              child: pageNo == index
                                  ?  SliderItem()
                                  : SliderItem()
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 2,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            2,
                (index) => SizedBox(
              width: 15,
              child: pageNo == index
                  ?  SizedBox(
                height: 5.0,
                child: const PageIndicatorCurrent(),
              )
                  : PageIndicatorNotCurrent(index: index, pageNo: pageNo),
            ),
          ),
        )
      ],
    );
  }
}

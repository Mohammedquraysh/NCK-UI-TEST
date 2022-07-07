import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nck_ui_test/components/buttons/button_card.dart';
import 'package:nck_ui_test/components/bottom_navigation_component/custom_bottom_navigation_bar.dart';
import 'package:nck_ui_test/screens/order_screen.dart';
import 'package:nck_ui_test/components/slider_component/sliders.dart';
import 'package:nck_ui_test/screens/top_up_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height:size.height * 0.5,
            color: const Color(0xffe0e0e0),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),


          ),
          Container(
            height: 200,
            decoration: const BoxDecoration(
                color: Color(0xFF179249),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Container(
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 30,
                                child: Icon(
                                  Icons.person_pin,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            Text('Paul N.',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),

                      ),

                       Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: const Icon(
                            Icons.doorbell_outlined,
                            size: 30,
                            color: Color(0xFF179249),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            height: 400,
            top: 120, left: 20, right: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child:Column(
                  children: const [
                   Sliders()
                  ],
                )
              )
          ),

          Padding(
            padding: const EdgeInsets.only(top: 330.0,left: 22, right: 22),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    ButtonCard(
                      text: 'Add Cylinder',
                      backgroundColor: const Color(0xFF179249),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const TopUPScreen()
                        ),
                        );
                      }
                    ),
                    ButtonCard(
                      text: 'Top Up',
                      backgroundColor: const Color(0xFF179249),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const TopUPScreen()
                        ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                      const Text('Activity',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold
                       ),
                      ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'view all',
                            style: const TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF179249),
                              fontWeight: FontWeight.bold
                            ),

                            recognizer: TapGestureRecognizer()
                              ..onTap = () {

                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const TopUPScreen()
                                ),
                                );

                                // print('The button is clicked!');
                              },
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right, color: Color(0xFF179249),)
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const OrderScreen(orderText: 'Swap order', orderAmount: '-₦ 4,500', orderDate: '17 August 2021', image: 'assets/images/logo.png',),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 10),
                  child: Divider(height: 5, thickness: 1),
                ),
                const OrderScreen(orderText: 'Swap order', orderAmount: '-₦ 4,500', orderDate: '17 August 2021', image: 'assets/images/logo.png',),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 10),
                  child: Divider(height: 5, thickness: 1),
                ),
                const OrderScreen(orderText: 'Swap order', orderAmount: '-₦ 4,500', orderDate: '17 August 2021', image: 'assets/images/logo.png',),
              ],
            ),
          ),
        ],
      ),
        bottomNavigationBar: const CustomBottomNavigationBar()
    );
    //Navigator.pop(context, 3);
  }
}

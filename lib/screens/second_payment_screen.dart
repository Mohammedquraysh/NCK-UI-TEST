
import 'package:flutter/material.dart';
import 'package:nck_ui_test/components/screen_components/payment_component.dart';
import 'package:nck_ui_test/screens/successful_screen.dart';

import '../components/buttons/custom_button.dart';

class SecondPaymentScreen extends StatelessWidget {
  const SecondPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children:  [
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 16),
                  child: Text('Payment',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Text('Select payment method',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: size.width * 0.9,
              decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:20.0, left: 10, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.wallet_travel, color: Color(0xFF179249)),
                    SizedBox(width: 10),
                    Text('Wallet',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text('NGN 22,000',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),

                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 8,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: size.width * 0.9,
              decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:20.0, left: 10, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.markunread_mailbox_outlined, color: Colors.green,),

                    Text('Card',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text('',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),

                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.black54,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 8,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(height: 5, thickness: 1),
            const SizedBox(height: 20),
            const Text('Select Card',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 20),
            const PaymentComponent(image: 'assets/images/master_card.png', retailName: '****  **** 5163', backgroundColor: Colors.black12),
            const SizedBox(height: 10),
            const PaymentComponent(image: 'assets/images/visa_1.png', retailName: '****  **** 5163', backgroundColor: Colors.black12),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Row(
                children: const [
                  Icon(Icons.add, color: Colors.green,),
                  SizedBox(width: 15),
                  Text('Add order',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.green
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            CustomButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SuccessfulScreen()
              ),
              );
            },
                text: 'Continue',
                backgroundColor: const Color(0xFF179249),
                textColor: Colors.white
            ),
          ],
        ),
      ),
    );
  }
}
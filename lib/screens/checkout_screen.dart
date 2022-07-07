import 'package:flutter/material.dart';
import 'package:nck_ui_test/components/screen_components/checkout_component.dart';
import 'package:nck_ui_test/components/buttons/custom_button.dart';
import 'package:nck_ui_test/screens/payment_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

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
                  child: Text('Checkout',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ) ,),
                )
              ],
            ),
            const SizedBox(height: 30),
            const Text('Order summary',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 30),
            const CheckoutComponent(orderText: 'Order 1', orderDate: 'Swap cylinder', orderAmount: 'NGN 1,200', orderWeight: '3.2kg.1 Qty',),
            const SizedBox(height: 10),
            const CheckoutComponent(orderText: 'Order 2', orderDate: 'Swap cylinder', orderAmount: 'NGN 6,200', orderWeight: '3.2kg.1 Qty',),
            const SizedBox(height: 15),
            const Divider(height: 5, thickness: 1),

            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Total',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                  Text('NGN 7,400',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Text('Delivery Address',
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
                padding: const EdgeInsets.only(top:14.0, left: 8, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('32b Oxley Street, Ilaje Lekki Lagos',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Change',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color:Color(0xFF179249)
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35),
            CustomButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentScreen()
              ),
              );
            },
                text: 'Payment',
                backgroundColor: const Color(0xFF179249),
                textColor: Colors.white
            ),
          ],
        ),
      ),
    );
  }
}

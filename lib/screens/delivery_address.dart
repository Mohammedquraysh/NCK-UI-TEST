import 'package:flutter/material.dart';
import 'package:nck_ui_test/components/buttons/custom_button.dart';
import 'package:nck_ui_test/components/screen_components/delivery_component.dart';
import 'package:nck_ui_test/screens/checkout_screen.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({Key? key}) : super(key: key);

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
                  child: Text('Delivery Address',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ) ,),
                )
              ],
            ),
            const SizedBox(height: 30),
            const Text('Select delivery Address',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 30),
            const DeliveryComponent(orderText: '32b Oxley Street, Ilaje Lekki Lagos', orderDate: 'Change'),
            const SizedBox(height: 20),
            const DeliveryComponent(orderText: '32b Oxley Street, Ilaje Lekki Lagos', orderDate: 'Change'),
            const SizedBox(height: 25),
            Row(
              children: const [
                Icon(Icons.add, color: Colors.green,),
                SizedBox(width: 15),
                Text('Add address',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.green
                  ),
                ),
              ],
            ),
            const SizedBox(height: 120),
            CustomButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CheckoutScreen()
              ),
              );
            },
                text: 'Checkout', backgroundColor: const Color(0xFF179249), textColor: Colors.white),
          ],
        ),
      ),
    );
  }
}

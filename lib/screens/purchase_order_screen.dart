

import 'package:flutter/material.dart';
import 'package:nck_ui_test/components/buttons/custom_button.dart';
import 'package:nck_ui_test/components/screen_components/cylinder_component.dart';
import 'package:nck_ui_test/components/screen_components/purchase-order_component.dart';
import 'package:nck_ui_test/screens/second_purchase_order_screen.dart';

class PurchaseOrderScreen extends StatelessWidget {
  const PurchaseOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: [
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
                  child: Text('Purchase Order',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ) ,),
                )
              ],
            ),
            const SizedBox(height: 16),
            const Text('Select your order preference',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 300,
                decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PurchaseOrderComponent( image: 'assets/images/swap_cylinder.png',  retailName: 'Swap Cylinder', backgroundColor: Colors.white),
                    const SizedBox(height: 10,),
                    const PurchaseOrderComponent( image: 'assets/images/new_cylinder.png',  retailName: 'New Cylinder', backgroundColor: Colors.white),
                    Padding(
                      padding: const EdgeInsets.only(left:5,top: 25.0),
                      child: Row(
                        children: const [
                          Text('Cylinder Weight',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54
                            ),
                          ),
                          SizedBox(width: 20),
                          Text('Number',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54
                            ) ,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: const [
                          CylinderComponent(retailName: '00', backgroundColor: Colors.white),
                          SizedBox(width: 15),
                          CylinderComponent(retailName: '00', backgroundColor: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: const [
                Icon(Icons.add, color: Colors.green,),
                SizedBox(width: 15),
                Text('Add order',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.green
                  ) ,),
              ],
            ),
            const SizedBox(height: 60),
            CustomButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SecondPurchaseOrderScreen()
              ),
              );
            }, text: 'Continue', backgroundColor: const Color(0xFF179249), textColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nck_ui_test/components/screen_components/top_up_component.dart';
import 'package:nck_ui_test/screens/purchase_order_screen.dart';

class TopUPScreen extends StatelessWidget {
  const TopUPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 35.0),
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
                  padding: EdgeInsets.only(top: 35.0, left: 16),
                  child: Text('Top Up',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ) ,),
                )
              ],
            ),
            const SizedBox(height: 16),
            const Text('Select Retailer you wish to purchase from',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PurchaseOrderScreen()
                ),
                );
              },
                child: const TopUpComponent(image: 'assets/images/oando.png', retailName: 'Oando Petrol Station', backgroundColor: Colors.black87)),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PurchaseOrderScreen()
                ),
                );
              },
                child: const TopUpComponent(image: 'assets/images/top_energies.png', retailName: 'Total Retail', backgroundColor: Color(0xFF179249))),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PurchaseOrderScreen()
                ),
                );
              },
                child: const TopUpComponent(image: 'assets/images/enyo.png', retailName: 'Enyo retail', backgroundColor: Colors.black87)),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PurchaseOrderScreen()
                ),
                );
              },
                child: const TopUpComponent(image: 'assets/images/ap_gas.png', retailName: 'AP Gas station', backgroundColor: Color(0xFF179249))),
          ],
        ),
      ),
    );
  }
}



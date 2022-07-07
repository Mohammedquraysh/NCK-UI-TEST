import 'package:flutter/material.dart';
import 'package:nck_ui_test/screens/home_page.dart';

import '../components/buttons/custom_button.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const CircleAvatar(
                radius: 64,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius:22,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 44,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Order  booked',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              const SizedBox(height: 10),
              const Text('Successfully',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              const SizedBox(height: 60),
              CustomButton(
                  onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()
                ),
                );
              },
                  text: 'Home',
                  backgroundColor: const Color(0xFF179249),
                  textColor: Colors.white
              )
            ],
          ),


        ),
      ),
    );
  }
}

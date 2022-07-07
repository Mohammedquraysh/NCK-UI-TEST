import 'package:flutter/material.dart';
import 'package:nck_ui_test/screens/checkout_screen.dart';
import 'package:nck_ui_test/screens/delivery_address.dart';
import 'package:nck_ui_test/screens/home_page.dart';
import 'package:nck_ui_test/screens/payment_screen.dart';
import 'package:nck_ui_test/screens/purchase_order_screen.dart';
import 'package:nck_ui_test/screens/second_payment_screen.dart';
import 'package:nck_ui_test/screens/second_purchase_order_screen.dart';
import 'package:nck_ui_test/screens/successful_screen.dart';
import 'package:nck_ui_test/screens/top_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        debugShowCheckedModeBanner: false,
      home: const HomePage()

    );
  }
}

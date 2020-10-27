import 'package:flutter/material.dart';
import 'package:PayPal/screens/login.dart';


void main() => runApp(PayPalApp());

class PayPalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PayPal',
      home: LogIn(),
      theme: ThemeData(fontFamily: 'Manrope'),
    );
  }
}
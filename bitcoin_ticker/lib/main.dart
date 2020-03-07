import 'package:flutter/material.dart';
import 'package:bitcoin_ticker/screens/price.dart';

void main() => runApp(BitcoinTicker());

class BitcoinTicker extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: PriceScreen(),
    );
  }
}

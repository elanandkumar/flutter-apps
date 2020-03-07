import 'package:flutter/material.dart';
import 'package:bitcoin_ticker/data/coin.dart';
import 'package:bitcoin_ticker/components/dropdown_menu.dart';

CoinData coinData = CoinData();

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 BitCoin Ticker 🤑'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.teal,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            color: Colors.teal,
            alignment: Alignment.center,
            child: DropdownMenu(
              data: coinData.getCurrencies(),
              handleOnChange: (value) {
                print(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}

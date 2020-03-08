import 'package:bitcoin_ticker/components/crypto_card.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin_ticker/data/coin.dart';
import 'package:bitcoin_ticker/components/dropdown_menu.dart';

CoinData coinData = CoinData();

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'AUD';
  Map<String, String> coinValues = {};
  bool isWaiting = false;

  @override
  void initState() {
    super.initState();
    getExchangeData();
  }

  void getExchangeData() async {
    isWaiting =  true;
    try {
      var data = await coinData.getCoinData(selectedCurrency);
      isWaiting = false;

      setState(() {
        coinValues = data;
      });
    } catch (e) {
      print(e);
    }
  }

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
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CryptoCard(
                  cryptoCurrency: 'BTC',
                  value: isWaiting ? '?' : coinValues['BTC'],
                  selectedCurrency: selectedCurrency
                ),
                CryptoCard(
                  cryptoCurrency: 'ETH',
                  value: isWaiting ? '?' : coinValues['ETH'],
                  selectedCurrency: selectedCurrency
                ),
                CryptoCard(
                  cryptoCurrency: 'LTC',
                  value: isWaiting ? '?' : coinValues['LTC'],
                  selectedCurrency: selectedCurrency
                ),
              ],
            ),
          ),
          Container(
            height: 150.0,
            color: Colors.teal,
            alignment: Alignment.center,
            child: DropdownMenu(
              data: currenciesList,
              handleOnChange: (value) {
                setState(() {
                  selectedCurrency = value;
                  getExchangeData();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

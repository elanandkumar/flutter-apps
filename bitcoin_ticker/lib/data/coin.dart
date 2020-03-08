import 'dart:convert';
import 'package:http/http.dart' as http;

const COIN_API_URL = "https://rest-sandbox.coinapi.io/v1/exchangerate/";
const API_KEY = "80C3A344-2FED-44DE-8597-9741684C1CF7";

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData(String currency) async{
    Map<String, String> cryptoPrices = {};

    for(String crypto in cryptoList) {
        String requestUrl = '$COIN_API_URL$crypto/$currency?apikey=$API_KEY';
        http.Response response = await http.get(requestUrl);
        if(response.statusCode == 200) {
          var decodedData = jsonDecode(response.body);
          double lastPrice = decodedData['rate'];

          cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
          
        } else {
          print(response.statusCode);
          throw 'Problem with the get request';
        }
    }

    return cryptoPrices;
  }
}


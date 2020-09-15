import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

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
  Future getCoindata() async {
    final url =
        'http://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=AFC4C5F7-AF67-42E4-BFCC-7AED50F49E43';
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      var jsonDecodedData = convert.jsonDecode(data);
      var rate = jsonDecodedData['rate'].toString();
      return rate;
    } else {
      print(response.statusCode);
    }
  }
}

import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final Uri url;
  late String data = '';
  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      data = response.body;
    } else {
      print(response.statusCode);
    }
    return jsonDecode(data);
  }
}

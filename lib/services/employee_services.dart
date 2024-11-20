import 'dart:convert';

import 'package:http/http.dart' as http;

class EmployeeServices {
  String baseUrl = 'https://reqres.in/api/';

  getData() async {
    try {
      print('loading');
      var response = await http.get(Uri.parse('${baseUrl}users?page=2'));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print('Data $data');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

var responseData;

Future login(String email, password, token) async {
  var message;
  var response = await http.post(
      Uri.parse("http://buddy.ropstambpo.com/api/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
        'device_token': token
      }));
  if (response.statusCode == 200) {
    responseData = jsonDecode(response.body);
    message = responseData;
  }
  return message;
}

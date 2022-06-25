import 'dart:convert';

import '../Models/PostsModel.dart';
import 'package:http/http.dart' as http;

List<Postmodel> postList = [];

Future<List<Postmodel>> getPosts() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

  var body = json.decode(response.body);
  if (response.statusCode == 200) {
    for (int i = 0; i < body.length; i++) {
      postList.add(Postmodel.fromJson(body[i]));
    }
  }
  return postList;
}

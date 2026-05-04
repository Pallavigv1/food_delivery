import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ArtclesApiservice {
  Future<List<dynamic>> searchArticles(String query) async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failes to load Article');
    }
  }
}

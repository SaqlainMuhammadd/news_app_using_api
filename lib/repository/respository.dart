import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_using_api/models/news_headline.dart';

class NewsRespository {
  List<Articles> newdealingliss = [];
  Future<List<Articles>> fetchNewsHeadline() async {
    newdealingliss.clear();
    String url =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=1b14ab4b05104c4998af90d67f3f492f';

    final response = await http.get(Uri.parse(url));

    if (kDebugMode) {
      print(response.body);
    }

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final NewsHeadlineModel model = NewsHeadlineModel.fromJson(body);
      for (var e in model.articles!) {
        newdealingliss.add(e);
      }
      return newdealingliss;
    }
    throw Exception('Failed to load data!');
  }
}

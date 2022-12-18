import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:news_app/model/News_model.dart';
import 'package:url_launcher/url_launcher.dart';

class screenController extends GetxController {
  getNews(String category) async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=2afbdd7585844050ae25f3fc12123588'));
    if (response.statusCode == 200) {
      return NewsModel.fromJson(jsonDecode(response.body));
    }
  }
}

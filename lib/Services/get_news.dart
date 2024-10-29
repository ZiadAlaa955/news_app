import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app/Models/news_model.dart';

class newsService {
  final dio = Dio();
  final String apiKey = '35579faa102c46c091da416fd3caef1a';
  final String baseUrl = 'https://newsapi.org/v2';
  Future<List<NewsModel>> getTopHeadlines(final String category) async {
    try {
      Response response = await dio.get(
          '$baseUrl/top-headlines?category=$category&country=us&apiKey=$apiKey');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData["articles"];

      List<NewsModel> articleList = [];
      for (var article in articles) {
        NewsModel newsModel = NewsModel(
          image: article["urlToImage"],
          title: article["title"],
          subTitle: article["description"],
        );
        articleList.add(newsModel);
      }
      return articleList;
    } on DioException catch (e) {
      log(e.toString());
      return [];
    } on Exception catch (e) {
      log('There is an error : ${e.toString()}');
      return [];
    }
  }
}

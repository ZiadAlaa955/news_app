import 'package:dio/dio.dart';
import 'package:news_app/Models/news_model.dart';

class GetNews {
  final dio = Dio();
  final String apiKey = '35579faa102c46c091da416fd3caef1a';
  final String baseUrl = 'https://newsapi.org/v2';

  void getTopHeadlines() async {
    Response response =
        await dio.get('$baseUrl/top-headlines?apiKey=$apiKey&country=us');
    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData["articles"];
    List<NewsModel> articlesList = [];
    for (var article in articles) {
      NewsModel newsModel = NewsModel(
        image: article["urlToImage"],
        title: article["title"],
        subTitle: article["description"],
      );
      articlesList.add(newsModel);
    }
  }
}

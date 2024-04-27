import 'package:dio/dio.dart';
import 'package:news_cloud/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews(String category) async {
    try {
      Response response = await dio.get(
          'https://newsdata.io/api/1/news?apikey=pub_293095da64b4635f0c2cbede34a9fd14086bf&image=1&country=us&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['results'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}

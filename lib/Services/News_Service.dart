import 'package:dio/dio.dart';
import 'package:news_app/Models/Article_Model.dart';
import 'package:news_app/main.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=283c30524a914a5a97faa1523449539c&country=us&category=$category',
      );
      
      Map<String, dynamic> Jsondata =
          response.data; //create a map of dynamic type for jsonadata
      
      List<dynamic> articles =
          Jsondata['articles']; //create a list of dynamic type for articles
      
      List<ArticleModel> articlesList =[ ]; //create a list of article model
      
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
      
          description: article['description'];
        
      
        articlesList.add(articleModel);
      }
    return articlesList;

    } catch (e) {
      return [];
    }

  }
}

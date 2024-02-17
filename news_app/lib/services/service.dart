import 'package:dio/dio.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/static_key/statics.dart';

class Servic {
  final dio = Dio();

  Future<List<NewsModel>> getNews(String cateName) async {
    Statics.categ = cateName;
    Response response = await dio.get(Statics.url);
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> newsList = jsonData['news'];
    List<NewsModel> newsM = [];

    for (var item in newsList) {
      NewsModel newsModel = NewsModel(
          title: item['title'],
          text: item['text'],
          image_url: item['image']);
      newsM.add(newsModel);
    }
    return newsM;
  }
}

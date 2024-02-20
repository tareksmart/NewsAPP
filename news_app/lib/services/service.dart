import 'package:dio/dio.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/static_key/statics.dart';

class Servic {
  final dio = Dio();

  Future<List<NewsModel>> getNews(String cateName) async {
    try {
      Statics.categ = cateName;
      Response response = await dio.get(Statics.url);
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> newsList = jsonData['news'];
      List<NewsModel> newsM = [];

      //var image_url;

      for (var item in newsList) {
        try {
          NewsModel newsModel = NewsModel(
              title: item['title'],
              text: item['text'],
              image_url: await image_url(item['image']));
          print('model ============');
          print(newsModel);
          print('model ============');

          newsM.add(newsModel);
        } on Exception catch (e) {
          print(e.toString());
        }
      }
      return newsM;
    } catch (e) {
      return [];
    }
  }

  Future<String> image_url(String url) async {
    try {
      Response responsImage = await dio.get(url);
      print(responsImage.data);
      if (responsImage.statusCode! >= 200 && responsImage.statusCode! <= 300) {
        print(url + ' success');
        return url;
      } else {
        print(url + ' fail');
      }
    } finally {
      print(url + 'finally');
      return '';
    }
  }
}

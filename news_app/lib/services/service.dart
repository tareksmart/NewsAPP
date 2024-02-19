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
 print(response.data);
      var image_url;

      for (var item in newsList) {
        // try {
        //   () async {
        //     Response responsImage = await dio.get(item['image']);
        //     if (responsImage.statusCode! >= 200 &&
        //         responsImage.statusCode! < 300) {
        //       image_url = item['image'];
        //       print(image_url);
        //     }
        //   };
        // } on Exception catch (e) {
        //   image_url = '';
        // }
        NewsModel newsModel = NewsModel(
            title: item['title'], text: item['text'], image_url: item['image']);

        newsM.add(newsModel);
      }
      return newsM;
    } catch (e) {
      return [];
    }
  }
}

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/static_key/statics.dart';

class Servic {
  final dio = Dio();

  Future<List<NewsModel>> getNews(String cateName) async {
    try {
     
      Response response = await dio.get(Statics.baseUrl(cateName));
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> newsList = jsonData['articles'];
      List<NewsModel> newsM = [];

      for (var item in newsList) {
        NewsModel newsModel = NewsModel.fromJson(item);
        newsM.add(newsModel);
      }
      return newsM;
    } on DioException catch (e) {
      final errorMessege =
          e.response?.data['message'] ?? 'there is an error plz try later';
      throw Exception(errorMessege);
    } on Exception catch (e) {
      print(e.toString());
      throw Exception('there is an error plz try later');
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

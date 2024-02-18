import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/services/service.dart';
import 'package:news_app/views/widgets/HeadLine_card.dart';

class HeadLineScrollView extends StatelessWidget {
  HeadLineScrollView({super.key,required this.newsM});

  List<NewsModel> newsM = [];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: newsM.length,
        itemBuilder: (context, index) {
          return HeadLineCard(newsModel: newsM[index]);
        });
  }
}

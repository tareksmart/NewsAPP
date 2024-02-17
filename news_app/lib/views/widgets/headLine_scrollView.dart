import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/services/service.dart';
import 'package:news_app/views/widgets/HeadLine_card.dart';

class HeadLineScrollView extends StatefulWidget {
  HeadLineScrollView({super.key});

  @override
  State<HeadLineScrollView> createState() => _HeadLineScrollViewState();
}

class _HeadLineScrollViewState extends State<HeadLineScrollView> {
  List<NewsModel> newsM = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init');
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    newsM = await Servic().getNews('entertainment');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (newsM.length > 0) {
      return SliverList.builder(
          itemCount: newsM.length,
          itemBuilder: (context, index) {
            return HeadLineCard(newsModel: newsM[index]);
          });
    } else {
      return SliverToBoxAdapter(
          child: Center(
              child: LinearProgressIndicator(
        color: Colors.blue,
      )));
    }
  }
}

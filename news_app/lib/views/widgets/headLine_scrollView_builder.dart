import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/headLine_scrollView.dart';

import '../../model/news_model.dart';
import '../../services/service.dart';

class HeadLineScrollViewBuilder extends StatefulWidget {
  const HeadLineScrollViewBuilder({
    super.key,
  });

  @override
  State<HeadLineScrollViewBuilder> createState() =>
      _HeadLineScrollViewBuilderState();
}

class _HeadLineScrollViewBuilderState extends State<HeadLineScrollViewBuilder> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
    getGeneralNews();
  }

  List<NewsModel> newsM = [];
  Future<void> getGeneralNews() async {
    newsM = await Servic().getNews('entertainment');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (newsM.isNotEmpty) {
      return HeadLineScrollView(
        newsM: newsM,
      );
    } else {
      return const SliverToBoxAdapter(
        child: Center(child: LinearProgressIndicator()),
      );
    }
  }
}

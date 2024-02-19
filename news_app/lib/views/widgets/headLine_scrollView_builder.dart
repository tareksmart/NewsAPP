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
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // getGeneralNews();
    future = Servic().getNews('hot');
  }

  // List<NewsModel> newsM = [];
  // Future<void> getGeneralNews() async {
  //   newsM = await Servic().getNews('entertainment');
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HeadLineScrollView(
            newsM: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
              child: Text('oops error has occured'));
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: LinearProgressIndicator()),
          );
        }
      },
    );
    // if (newsM.isNotEmpty) {
    //   return HeadLineScrollView(
    //     newsM: newsM,
    //   );
    // } else {
    //   return const SliverToBoxAdapter(
    //     child: Center(child: LinearProgressIndicator()),
    //   );
    // }
  }
}

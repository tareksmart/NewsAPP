import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/static_key/statics.dart';

class HeadLineCard extends StatelessWidget {
  HeadLineCard({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: ImageNetwork(newsModel: newsModel),
          ),
          Text(
            newsModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Text(
            newsModel.text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({
    super.key,
    required this.newsModel,
  });

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    try {
     
      return  Image.network(
        newsModel.image_url ?? Statics.imagefakeUrl,
        errorBuilder: (context, error, stackTrace) =>
            Image.asset('assets/notFound.jpg'),
        fit: BoxFit.cover,
      );
    } on NetworkImageLoadException catch (e) {
      return Image.asset('assets/notFound.jpg');
    }
  }
}

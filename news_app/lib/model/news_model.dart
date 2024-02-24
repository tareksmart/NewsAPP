class NewsModel {
  final String title;
  final String? text;
  String? image_url;
  NewsModel({required this.title,  this.text, this.image_url});

  factory NewsModel.fromJson(json) {
    return NewsModel(
      title: json['title'],
      text: json['description'],
      image_url: json['urlToImage'],
    );
  }
}

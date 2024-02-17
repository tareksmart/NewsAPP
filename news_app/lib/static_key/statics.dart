class Statics {
  static String api_key = 'd3022ba6d64c45f4af32c1f8d0e794bd';
  // String cate;
  static String categ = '';
  //Statics({required this.cate});
  static String imagefakeUrl =
      'https://static.vecteezy.com/system/resources/previews/004/639/366/original/error-404-not-found-text-design-vector.jpg';

  static String url =
      'https://api.worldnewsapi.com/search-news?text=${categ}&language=ar&api-key=$api_key';
}

enum Category { sport, entertainment, politics }

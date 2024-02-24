class Statics {
  static String api_key = '90f88b9456c64d00aa97e21aa2498f5e';
  // String cate;
  static String categ = 'general';
  //Statics({required this.cate});
  static String imagefakeUrl =
      'https://static.vecteezy.com/system/resources/previews/004/639/366/original/error-404-not-found-text-design-vector.jpg';

  static String url =
      'https://newsapi.org/v2/everything?q=$categ&apiKey=$api_key';

  static String baseUrl(String category) {
    return 'https://newsapi.org/v2/everything?q=$category&apiKey=$api_key';
  }
}

enum Category { sport, entertainment, politics }

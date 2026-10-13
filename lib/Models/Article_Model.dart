class ArticleModel {
  final String? image;
  final String title;
  final String? description;
  final String url;
  

  ArticleModel({  //constructor
    required this.image,
    required this.title,
    required this.description,
    required this.url,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      description: json['description'],
      url: json['url'] ?? '',
    );
  }
  
}

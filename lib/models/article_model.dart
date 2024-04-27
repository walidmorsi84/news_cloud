class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;

  const ArticleModel(
      {required this.image, required this.title, required this.subTitle});

// Named constructor using map of string , dynamic and i named it json instead of Map<String, dynamic>
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['image_url'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}

class NewsModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;

  const NewsModel({
    required this.url,
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

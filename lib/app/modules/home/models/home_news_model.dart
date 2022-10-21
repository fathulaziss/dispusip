class HomeNewsModel {
  HomeNewsModel({
    this.image = '',
    this.link = '',
    this.title = '',
    this.date = '',
  });

  factory HomeNewsModel.fromJson(Map<String, dynamic> json) => HomeNewsModel(
        image: json['image'],
        link: json['link'],
        title: json['title'],
        date: json['date'],
      );

  final String image, link, title, date;

  Map<String, dynamic> toJson() => {
        'image': image,
        'link': link,
        'title': title,
        'date': date,
      };
}

class HomeSliderModel {
  HomeSliderModel({
    this.image = '',
    this.link = '',
    this.title = '',
    this.date = '',
  });

  factory HomeSliderModel.fromJson(Map<String, dynamic> json) =>
      HomeSliderModel(
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

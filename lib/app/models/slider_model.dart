class SliderModel {
  SliderModel({
    this.image = '',
    this.link = '',
    this.title = '',
    this.date = '',
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) => SliderModel(
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

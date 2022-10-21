class HomeBookCategoryModel {
  HomeBookCategoryModel({this.label = '', this.image = ''});

  factory HomeBookCategoryModel.fromJson(Map<String, dynamic> json) =>
      HomeBookCategoryModel(image: json['image'], label: json['label']);

  final String label, image;

  Map<String, dynamic> toJson() => {
        'image': image,
        'label': label,
      };
}

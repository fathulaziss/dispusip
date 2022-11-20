class BookCategoryModel {
  BookCategoryModel({
    this.icon = '',
    this.color = 0xFFFFFFFF,
    this.name = '',
    this.query = '',
  });

  factory BookCategoryModel.fromJson(Map<String, dynamic> json) =>
      BookCategoryModel(
        icon: json['icon'] ?? '',
        color: json['color'] ?? 0xFFFFFFFF,
        name: json['name'] ?? '',
        query: json['query'] ?? '',
      );

  final String icon;
  final int color;
  final String name;
  final String query;

  Map<String, dynamic> toJson() => {
        'icon': icon,
        'color': color,
        'name': name,
        'query': query,
      };
}

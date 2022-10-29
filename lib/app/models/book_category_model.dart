class BookCategoryModel {
  BookCategoryModel({this.id = '', this.name = '', this.code = ''});

  factory BookCategoryModel.fromJson(Map<String, dynamic> json) =>
      BookCategoryModel(
        id: json['ID'] ?? '',
        code: json['Code'] ?? '',
        name: json['Name'] ?? '',
      );

  final String id;
  final String code;
  final String name;

  Map<String, dynamic> toJson() => {
        'ID': id,
        'Code': code,
        'Name': name,
      };
}

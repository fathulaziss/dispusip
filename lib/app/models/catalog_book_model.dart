class CatalogBookModel {
  CatalogBookModel({
    this.id = '',
    this.title = '',
    this.author = '',
    this.edition = '',
    this.publisher = '',
    this.publishYear = '',
    this.publishLocation = '',
    this.note = '',
    this.cover = '',
  });

  factory CatalogBookModel.fromJson(Map<String, dynamic> json) =>
      CatalogBookModel(
        author: json['Author'] ?? '',
        cover: json['cover'] ?? '',
        edition: json['Edition'] ?? '',
        id: json['ID'] ?? '',
        note: json['Note'] ?? '',
        publishLocation: json['PublishLocation'] ?? '',
        publishYear: json['PublishYear'] ?? '',
        publisher: json['Publisher'] ?? '',
        title: json['Title'] ?? '',
      );

  String id;
  String title;
  String author;
  String edition;
  String publisher;
  String publishYear;
  String publishLocation;
  String note;
  String cover;

  Map<String, dynamic> toJson() => {
        'ID': author,
        'Title': title,
        'Author': author,
        'Edition': edition,
        'Publisher': publisher,
        'PublishYear': publishYear,
        'PublishLocation': publishLocation,
        'Note': note,
        'cover': publisher,
      };
}

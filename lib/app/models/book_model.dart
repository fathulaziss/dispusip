class BookModel {
  BookModel({
    this.edition = '',
    this.id = 0,
    this.author = '',
    this.title = '',
    this.publisher = '',
    this.publishYear = '',
    this.publishLocation = '',
    this.photos = '',
    this.cover = '',
    this.note = '',
    this.subject = '',
    this.worksheetName = '',
    this.category = '',
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        edition: json['Edition'] ?? '',
        id: json['ID'] ?? 0,
        author: json['Author'] ?? '',
        title: json['Title'] ?? '',
        publisher: json['Publisher'] ?? '',
        publishYear: json['PublishYear'] ?? '',
        publishLocation: json['PublishLocation'] ?? '',
        photos: json['Photos'] ?? '',
        cover: json['cover'] ?? '',
        note: json['Note'] ?? '',
        subject: json['Subject'] ?? '',
        worksheetName: json['WorksheetName'] ?? '',
        category: json['Category'] ?? '',
      );

  final String edition;
  final int id;
  final String author;
  final String title;
  final String publisher;
  final String publishYear;
  final String publishLocation;
  final String photos;
  final String cover;
  final String note;
  final String subject;
  final String worksheetName;
  final String category;

  Map<String, dynamic> toJson() => {
        'Edition': edition,
        'ID': id,
        'Author': author,
        'Title': title,
        'Publisher': publisher,
        'PublishYear': publishYear,
        'PublishLocation': publishLocation,
        'Photos': photos,
        'cover': cover,
        'Note': note,
        'Subject': subject,
        'WorksheetName': worksheetName,
        'Category': category,
      };
}

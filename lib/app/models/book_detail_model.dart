class BookDetailModel {
  BookDetailModel({
    this.title = '',
    this.author = '',
    this.edition = '',
    this.publisher = '',
    this.publishYear = '',
    this.publikasi = '',
    this.photos = '',
    this.publishLocation = '',
    this.note = '',
    this.callNumber = '',
    this.subject = '',
    this.physicalDescription = '',
    this.languages = '',
    this.collectionID = '',
    this.worksheetName = '',
    this.worksheetDescription = '',
    this.category = '',
    this.codeCategory = '',
    this.jumlahEksemplar = 0,
    this.tersediaOffline = 0,
  });

  factory BookDetailModel.fromJson(Map<String, dynamic> json) =>
      BookDetailModel(
        title: json['Title'] ?? '',
        author: json['Author'] ?? '',
        edition: json['Edition'] ?? '',
        publisher: json['Publisher'] ?? '',
        publishYear: json['PublishYear'] ?? '',
        publikasi: json['Publikasi'] ?? '',
        photos: json['Photos'] ?? '',
        publishLocation: json['PublishLocation'] ?? '',
        note: json['Note'] ?? '',
        callNumber: json['CallNumber'] ?? '',
        subject: json['Subject'] ?? '',
        physicalDescription: json['PhysicalDescription'] ?? '',
        languages: json['languages'] ?? '',
        collectionID: json['CollectionID'] ?? '',
        worksheetName: json['WorksheetName'] ?? '',
        worksheetDescription: json['WorksheetDescription'] ?? '',
        category: json['Category'] ?? '',
        codeCategory: json['CodeCategory'] ?? '',
        jumlahEksemplar: json['JumlahEksemplar'] ?? 0,
        tersediaOffline: json['TersediaOffline'] ?? 0,
      );

  final String title;
  final String author;
  final String edition;
  final String publisher;
  final String publishYear;
  final String publikasi;
  final String photos;
  final String publishLocation;
  final String note;
  final String callNumber;
  final String subject;
  final String physicalDescription;
  final String languages;
  final String collectionID;
  final String worksheetName;
  final String worksheetDescription;
  final String category;
  final String codeCategory;
  final int jumlahEksemplar;
  final int tersediaOffline;

  Map<String, dynamic> toJson() => {
        'Title': title,
        'Author': author,
        'Edition': edition,
        'Publisher': publisher,
        'PublishYear': publishYear,
        'Publikasi': publikasi,
        'Photos': photos,
        'PublishLocation': publishLocation,
        'Note': note,
        'CallNumber': callNumber,
        'Subject': subject,
        'PhysicalDescription': physicalDescription,
        'languages': languages,
        'CollectionID': collectionID,
        'WorksheetName': worksheetName,
        'WorksheetDescription': worksheetDescription,
        'Category': category,
        'CodeCategory': codeCategory,
        'JumlahEksemplar': jumlahEksemplar,
        'TersediaOffline': tersediaOffline,
      };
}

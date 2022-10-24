class BookModel2 {
  BookModel2({
    this.id = 0,
    this.title = '',
    this.author = '',
    this.edition = '',
    this.publisher = '',
    this.publishYear = '',
    this.publishLocation = '',
    this.note = '',
    this.cover = '',
    this.jumlahBooking = '',
    this.nomorBarcode = '',
    this.image = '',
  });

  factory BookModel2.fromJson(Map<String, dynamic> json) => BookModel2(
        author: json['Author'] ?? '',
        cover: json['cover'] ?? '',
        edition: json['Edition'] ?? '',
        id: json['ID'] ?? 0,
        note: json['Note'] ?? '',
        publishLocation: json['PublishLocation'] ?? '',
        publishYear: json['PublishYear'] ?? '',
        publisher: json['Publisher'] ?? '',
        title: json['Title'] ?? '',
        jumlahBooking: json['jumlah_booking'] ?? '',
        nomorBarcode: json['NomorBarcode'] ?? '',
        image: json['Image'] ?? '',
      );

  int id;
  String title;
  String author;
  String edition;
  String publisher;
  String publishYear;
  String publishLocation;
  String note;
  String cover;
  String jumlahBooking;
  String nomorBarcode;
  String image;

  Map<String, dynamic> toJson() => {
        'ID': id,
        'Title': title,
        'Author': author,
        'Edition': edition,
        'Publisher': publisher,
        'PublishYear': publishYear,
        'PublishLocation': publishLocation,
        'Note': note,
        'cover': publisher,
        'jumlah_booking': jumlahBooking,
        'NomorBarcode': nomorBarcode,
        'Image': image,
      };
}

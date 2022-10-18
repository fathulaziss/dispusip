class BookModel {
  BookModel({
    this.author = '',
    this.callNumber = '',
    this.category = '',
    this.collectionType = '',
    this.image = '',
    this.isbnNumber = '',
    this.language = '',
    this.physicDesc = '',
    this.publisher = '',
    this.sinopsis = '',
    this.subject = '',
    this.title = '',
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        author: json['author'],
        callNumber: json['call_number'],
        category: json['category'],
        collectionType: json['collection_type'],
        image: json['image'],
        isbnNumber: json['isbn_number'],
        language: json['language'],
        physicDesc: json['physic_desc'],
        publisher: json['publisher'],
        sinopsis: json['sinopsis'],
        subject: json['subject'],
        title: json['title'],
      );

  final String author,
      category,
      image,
      title,
      subject,
      collectionType,
      physicDesc,
      publisher,
      isbnNumber,
      language,
      sinopsis,
      callNumber;

  Map<String, dynamic> toJson() => {
        'author': author,
        'call_number': callNumber,
        'category': category,
        'collection_type': collectionType,
        'image': image,
        'isbn_number': isbnNumber,
        'language': language,
        'physic_desc': physicDesc,
        'publisher': publisher,
        'sinopsis': sinopsis,
        'subject': subject,
        'title': title,
      };
}

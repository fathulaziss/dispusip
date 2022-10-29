class BookCategoryDataModel {
  BookCategoryDataModel({
    this.id = 0,
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
    this.maximumBorrowCollection = '',
    this.category = '',
    this.codeCategory = '',
    this.codeRule = '',
    this.nameRule = '',
    this.codeMedia = '',
    this.nameMedia = '',
    this.codeSource = '',
    this.nameSource = '',
    this.nameStatus = '',
    this.loanItemsID = '',
    this.collectionLoanID = '',
    this.collectionCount = '',
    this.lateCount = '',
    this.loanCount = '',
    this.returnCount = '',
  });

  factory BookCategoryDataModel.fromJson(Map<String, dynamic> json) =>
      BookCategoryDataModel(
        id: json['ID'] != null ? int.parse(json['ID']) : 0,
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
        maximumBorrowCollection: json['MaximumBorrowCollection'] ?? '',
        category: json['Category'] ?? '',
        codeCategory: json['CodeCategory'] ?? '',
        codeRule: json['CodeRule'] ?? '',
        nameRule: json['NameRule'] ?? '',
        codeMedia: json['CodeMedia'] ?? '',
        nameMedia: json['NameMedia'] ?? '',
        codeSource: json['CodeSource'] ?? '',
        nameSource: json['NameSource'] ?? '',
        nameStatus: json['NameStatus'] ?? '',
        loanItemsID: json['loanItemsID'] ?? '',
        collectionLoanID: json['CollectionLoanID'] ?? '',
        collectionCount: json['CollectionCount'] ?? '',
        lateCount: json['LateCount'] ?? '',
        loanCount: json['LoanCount'] ?? '',
        returnCount: json['ReturnCount'] ?? '',
      );

  final int id;
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
  final String maximumBorrowCollection;
  final String category;
  final String codeCategory;
  final String codeRule;
  final String nameRule;
  final String codeMedia;
  final String nameMedia;
  final String codeSource;
  final String nameSource;
  final String nameStatus;
  final String loanItemsID;
  final String collectionLoanID;
  final String collectionCount;
  final String lateCount;
  final String loanCount;
  final String returnCount;

  Map<String, dynamic> toJson() => {
        'ID': id,
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
        'MaximumBorrowCollection': maximumBorrowCollection,
        'Category': category,
        'CodeCategory': codeCategory,
        'CodeRule': codeRule,
        'NameRule': nameRule,
        'CodeMedia': codeMedia,
        'NameMedia': nameMedia,
        'CodeSource': codeSource,
        'NameSource': nameSource,
        'NameStatus': nameStatus,
        'loanItemsID': loanItemsID,
        'CollectionLoanID': collectionLoanID,
        'CollectionCount': collectionCount,
        'LateCount': lateCount,
        'LoanCount': loanCount,
        'ReturnCount': returnCount,
      };
}

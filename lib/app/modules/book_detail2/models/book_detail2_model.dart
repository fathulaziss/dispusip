class BookDetail2Model {
  BookDetail2Model({
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

  factory BookDetail2Model.fromJson(Map<String, dynamic> json) =>
      BookDetail2Model(
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

  String title;
  String author;
  String edition;
  String publisher;
  String publishYear;
  String publikasi;
  String photos;
  String publishLocation;
  String note;
  String callNumber;
  String subject;
  String physicalDescription;
  String languages;
  String collectionID;
  String worksheetName;
  String worksheetDescription;
  String maximumBorrowCollection;
  String category;
  String codeCategory;
  String codeRule;
  String nameRule;
  String codeMedia;
  String nameMedia;
  String codeSource;
  String nameSource;
  String nameStatus;
  String loanItemsID;
  String collectionLoanID;
  String collectionCount;
  String lateCount;
  String loanCount;
  String returnCount;

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

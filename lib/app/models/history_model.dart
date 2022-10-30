class HistoryModel {
  HistoryModel({
    this.find = 0,
    this.result = const <Result>[],
  });

  factory HistoryModel.fromJson(Map<String, dynamic> json) => HistoryModel(
        find: json['findbook'] ?? 0,
        result: json['result'] != null
            ? (json['result'] as List).map((e) => Result.fromJson(e)).toList()
            : <Result>[],
      );

  final int find;
  final List<Result> result;

  Map<String, dynamic> toJson() => {
        'find': find,
        'result': result.map((e) => e.toJson()).toList(),
      };
}

class Result {
  Result({
    this.loanDate = 0,
    this.dueDate = '',
    this.lateDays = '',
    this.loanStatus = '',
    this.memberId = '',
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
    this.languages2 = '',
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        loanDate: json['LoanDate'] ?? 0,
        dueDate: json['DueDate'] ?? '',
        lateDays: json['LateDays'] ?? '',
        loanStatus: json['LoanStatus'] ?? '',
        memberId: json['member_id'] ?? '',
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
        languages2: json['Languages'] ?? '',
      );

  final int loanDate;
  final String dueDate;
  final String lateDays;
  final String loanStatus;
  final String memberId;
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
  final String languages2;

  Map<String, dynamic> toJson() => {
        'LoanDate': loanDate,
        'DueDate': dueDate,
        'LateDays': lateDays,
        'LoanStatus': loanStatus,
        'member_id': memberId,
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
        'Languages': languages2,
      };
}

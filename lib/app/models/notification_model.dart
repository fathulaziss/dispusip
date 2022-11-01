class NotificationModel {
  NotificationModel({
    this.id = '',
    this.memberId = '',
    this.title = '',
    this.body = '',
    this.status = '',
    this.createdDate = '',
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        id: json['ID'] ?? '',
        memberId: json['Member_Id'] ?? '',
        title: json['Title'] ?? '',
        body: json['Body'] ?? '',
        status: json['Status'] ?? '',
        createdDate: json['CreatedDate'] ?? '',
      );

  final String id;
  final String memberId;
  final String title;
  final String body;
  final String status;
  final String createdDate;

  Map<String, dynamic> toJson() => {
        'ID': id,
        'Member_Id': memberId,
        'Title': title,
        'Body': body,
        'Status': status,
      };
}

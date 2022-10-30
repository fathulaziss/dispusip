class NotificationModel {
  NotificationModel({
    this.desc = '',
    this.isRead = false,
    this.time = '',
    this.title = '',
  });

  final String title;
  final String desc;
  final bool isRead;
  final String time;
}

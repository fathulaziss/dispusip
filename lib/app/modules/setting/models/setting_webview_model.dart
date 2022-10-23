class SettingWebviewModel {
  SettingWebviewModel({this.id = '', this.link = '', this.title = ''});

  factory SettingWebviewModel.fromJson(Map<String, dynamic> json) =>
      SettingWebviewModel(
        id: json['id'],
        link: json['link'],
        title: json['title'],
      );

  final String id, title, link;

  Map<String, dynamic> toJson() => {
        'id': id,
        'link': link,
        'title': title,
      };
}

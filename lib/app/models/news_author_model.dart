class NewsAuthorModel {
  NewsAuthorModel({
    this.id = 0,
    this.name = '',
    this.url = '',
    this.description = '',
    this.link = '',
    this.slug = '',
    this.avatarUrls = const {},
    this.meta = const [],
    this.links = const {},
  });

  factory NewsAuthorModel.fromJson(Map<String, dynamic> json) =>
      NewsAuthorModel(
        id: json['id'] ?? 0,
        name: json['name'] ?? '',
        url: json['url'] ?? '',
        description: json['description'] ?? '',
        link: json['link'] ?? '',
        slug: json['slug'] ?? '',
        avatarUrls: json['avatar_urls'] ?? {},
        meta: json['meta'] ?? [],
        links: json['_links'] ?? {},
      );

  int id;
  String name;
  String url;
  String description;
  String link;
  String slug;
  Map<String, dynamic> avatarUrls;
  List meta;
  Map<String, dynamic> links;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'url': url,
        'description': description,
        'link': link,
        'slug': slug,
        'avatar_urls': avatarUrls,
        'meta': meta,
        '_links': links,
      };
}

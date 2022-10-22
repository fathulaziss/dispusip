class HomeNewsModel {
  HomeNewsModel({
    this.id = 0,
    this.date = '',
    this.dateGmt = '',
    this.guid = const {},
    this.modified = '',
    this.modifiedGmt = '',
    this.slug = '',
    this.status = '',
    this.type = '',
    this.link = '',
    this.title = const {},
    this.content = const {},
    this.excerpt = const {},
    this.author = 0,
    this.featuredMedia = 0,
    this.commentStatus = '',
    this.pingStatus = '',
    this.sticky = false,
    this.template = '',
    this.format = '',
    this.meta = const [],
    this.categories = const [],
    this.tags = const [],
    this.links = const {},
  });

  factory HomeNewsModel.fromJson(Map<String, dynamic> json) => HomeNewsModel(
        id: json['id'],
        date: json['date'],
        dateGmt: json['date_gmt'],
        guid: json['guid'],
        modified: json['modified'],
        modifiedGmt: json['modified_gmt'],
        slug: json['slug'],
        status: json['status'],
        type: json['type'],
        link: json['link'],
        title: json['title'],
        content: json['content'],
        excerpt: json['excerpt'],
        author: json['author'],
        featuredMedia: json['featured_media'],
        commentStatus: json['comment_status'],
        pingStatus: json['ping_status'],
        sticky: json['sticky'],
        template: json['template'],
        format: json['format'],
        meta: json['meta'],
        categories: json['categories'],
        tags: json['tags'],
        links: json['_links'],
      );

  int id;
  String date;
  String dateGmt;
  Map<String, dynamic> guid;
  String modified;
  String modifiedGmt;
  String slug;
  String status;
  String type;
  String link;
  Map<String, dynamic> title;
  Map<String, dynamic> content;
  Map<String, dynamic> excerpt;
  int author;
  int featuredMedia;
  String commentStatus;
  String pingStatus;
  bool sticky;
  String template;
  String format;
  List meta;
  List categories;
  List tags;
  Map<String, dynamic> links;

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date,
        'date_gmt': author,
        'guid': guid,
        'modified': modified,
        'modified_gmt': modifiedGmt,
        'slug': slug,
        'status': status,
        'type': type,
        'link': link,
        'title': title,
        'content': content,
        'excerpt': excerpt,
        'author': author,
        'featured_media': featuredMedia,
        'comment_status': commentStatus,
        'ping_status': pingStatus,
        'sticky': sticky,
        'template': template,
        'format': format,
        'meta': meta,
        'categories': categories,
        'tags': tags,
        '_links': links,
      };
}

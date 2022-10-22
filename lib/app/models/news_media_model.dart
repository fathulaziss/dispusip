class NewsMediaModel {
  NewsMediaModel({
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
    this.author = 0,
    this.commentStatus = '',
    this.pingStatus = '',
    this.template = '',
    this.meta = const [],
    this.smush,
    this.description = const {},
    this.caption = const {},
    this.altText = '',
    this.mediaType = '',
    this.mimeType = '',
    this.mediaDetails = const {},
    this.post,
    this.sourceUrl = '',
    this.links = const {},
  });

  factory NewsMediaModel.fromJson(Map<String, dynamic> json) => NewsMediaModel(
        id: json['id'] ?? 0,
        date: json['date'] ?? '',
        dateGmt: json['date_gmt'] ?? '',
        guid: json['guid'] ?? {},
        modified: json['modified'] ?? '',
        modifiedGmt: json['modified_gmt'] ?? '',
        slug: json['slug'] ?? '',
        status: json['status'] ?? '',
        type: json['type'] ?? '',
        link: json['link'] ?? '',
        title: json['title'] ?? {},
        author: json['author'] ?? 0,
        commentStatus: json['comment_status'] ?? '',
        pingStatus: json['ping_status'] ?? '',
        template: json['template'] ?? '',
        meta: json['meta'] ?? [],
        smush: json['smush'],
        description: json['description'] ?? {},
        caption: json['caption'] ?? {},
        altText: json['alt_text'] ?? '',
        mediaType: json['media_type'] ?? '',
        mimeType: json['mime_type'] ?? '',
        mediaDetails: json['media_details'] ?? {},
        post: json['post'],
        sourceUrl: json['source_url'] ?? '',
        links: json['_links'] ?? {},
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
  int author;
  String commentStatus;
  String pingStatus;
  String template;
  List meta;
  dynamic smush;
  Map<String, dynamic> description;
  Map<String, dynamic> caption;
  String altText;
  String mediaType;
  String mimeType;
  Map<String, dynamic> mediaDetails;
  dynamic post;
  String sourceUrl;
  Map<String, dynamic> links;

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date,
        'date_gmt': dateGmt,
        'guid': guid,
        'modified': modified,
        'modified_gmt': modifiedGmt,
        'slug': slug,
        'status': status,
        'type': type,
        'link': link,
        'title': title,
        'author': author,
        'comment_status': commentStatus,
        'ping_status': pingStatus,
        'template': template,
        'meta': meta,
        'smush': smush,
        'description': description,
        'caption': caption,
        'alt_text': altText,
        'media_type': mediaType,
        'mime_type': mimeType,
        'media_details': mediaDetails,
        'post': post,
        'source_url': sourceUrl,
        '_links': links,
      };
}

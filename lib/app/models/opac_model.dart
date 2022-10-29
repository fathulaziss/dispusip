import 'package:dispusip/app/models/book_model.dart';

class OpacModel {
  OpacModel({
    this.findbook = 0,
    this.totalCollection = '',
    this.result = const <BookModel>[],
  });

  factory OpacModel.fromJson(Map<String, dynamic> json) => OpacModel(
        findbook: json['findbook'] ?? 0,
        totalCollection: json['total_collection'] ?? '',
        result: json['result'] != null
            ? (json['result'] as List)
                .map((e) => BookModel.fromJson(e))
                .toList()
            : <BookModel>[],
      );

  final int findbook;
  final String totalCollection;
  final List<BookModel> result;

  Map<String, dynamic> toJson() => {
        'findbook': findbook,
        'total_collection': totalCollection,
        'result': result.map((e) => e.toJson()).toList()
      };
}

class RegisterGenderModel {
  RegisterGenderModel({this.id = '', this.value = ''});

  factory RegisterGenderModel.fromJson(Map<String, dynamic> json) =>
      RegisterGenderModel(
        id: json['id'] ?? '',
        value: json['value'] ?? '',
      );

  final String id;
  final String value;

  Map<String, dynamic> toJson() => {
        'id': id,
        'value': value,
      };
}

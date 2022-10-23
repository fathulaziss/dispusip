class RegisterTypeIdModel {
  RegisterTypeIdModel({this.id = '', this.nama = ''});

  factory RegisterTypeIdModel.fromJson(Map<String, dynamic> json) =>
      RegisterTypeIdModel(
        id: json['id'] ?? '',
        nama: json['Nama'] ?? '',
      );

  final String id;
  final String nama;

  Map<String, dynamic> toJson() => {
        'id': id,
        'Nama': nama,
      };
}

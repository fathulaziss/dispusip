class UserInfoModel {
  UserInfoModel({
    this.nomorAnggota = '',
    this.namaLengkap = '',
    this.kotaDomisili = '',
    this.email = '',
    this.tempatLahir = '',
    this.tanggalLahir = '',
    this.nomorHP = '',
    this.statusAnggota = '',
    this.alamat = '',
    this.photo = '',
  });

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
        nomorAnggota: json['NomorAnggota'] ?? '',
        namaLengkap: json['NamaLengkap'] ?? '',
        kotaDomisili: json['KotaDomisili'] ?? '',
        email: json['Email'] ?? '',
        tempatLahir: json['TempatLahir'] ?? '',
        tanggalLahir: json['TanggalLahir'] ?? '',
        nomorHP: json['NomorHP'] ?? '',
        statusAnggota: json['StatusAnggota'] ?? '',
        alamat: json['Alamat'] ?? '',
        photo: json['Photo'] ?? '',
      );

  String nomorAnggota;
  String namaLengkap;
  String kotaDomisili;
  String email;
  String tempatLahir;
  String tanggalLahir;
  String nomorHP;
  String statusAnggota;
  String alamat;
  String photo;

  Map<String, dynamic> toJson() => {
        'NomorAnggota': nomorAnggota,
        'NamaLengkap': namaLengkap,
        'KotaDomisili': kotaDomisili,
        'Email': email,
        'TempatLahir': tempatLahir,
        'TanggalLahir': tanggalLahir,
        'NomorHP': nomorHP,
        'StatusAnggota': statusAnggota,
        'Alamat': alamat,
        'Photo': photo,
      };
}

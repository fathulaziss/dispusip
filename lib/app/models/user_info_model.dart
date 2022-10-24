class UserInfoModel {
  UserInfoModel({
    this.nomorAnggota = '',
    this.namaLengkap = '',
    this.alamatDomisili = '',
    this.kotaDomisili = '',
    this.rTDomisili = '',
    this.rWDomisili = '',
    this.alamatAsli = '',
    this.kotaAsli = '',
    this.rTAsli = '',
    this.rWAsli = '',
    this.email = '',
    this.tempatLahir = '',
    this.tanggalLahir = '',
    this.nomorHP = '',
    this.statusAnggota = '',
    this.photo = '',
  });

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
        nomorAnggota: json['NomorAnggota'] ?? '',
        namaLengkap: json['NamaLengkap'] ?? '',
        alamatDomisili: json['AlamatDomisili'] ?? '',
        kotaDomisili: json['KotaDomisili'] ?? '',
        rTDomisili: json['RTDomisili'] ?? '',
        rWDomisili: json['RWDomisili'] ?? '',
        alamatAsli: json['AlamatAsli'] ?? '',
        kotaAsli: json['KotaAsli'] ?? '',
        rTAsli: json['RTAsli'] ?? '',
        rWAsli: json['RWAsli'] ?? '',
        email: json['Email'] ?? '',
        tempatLahir: json['TempatLahir'] ?? '',
        tanggalLahir: json['TanggalLahir'] ?? '',
        nomorHP: json['NomorHP'] ?? '',
        statusAnggota: json['StatusAnggota'] ?? '',
        photo: json['Photo'] ?? '',
      );

  String nomorAnggota;
  String namaLengkap;
  String alamatDomisili;
  String kotaDomisili;
  String rTDomisili;
  String rWDomisili;
  String alamatAsli;
  String kotaAsli;
  String rTAsli;
  String rWAsli;
  String email;
  String tempatLahir;
  String tanggalLahir;
  String nomorHP;
  String statusAnggota;
  String photo;

  Map<String, dynamic> toJson() => {
        'NomorAnggota': nomorAnggota,
        'NamaLengkap': namaLengkap,
        'AlamatDomisili': alamatDomisili,
        'KotaDomisili': kotaDomisili,
        'RTDomisili': rTDomisili,
        'RWDomisili': rWDomisili,
        'AlamatAsli': alamatAsli,
        'KotaAsli': kotaAsli,
        'RTAsli': rTAsli,
        'RWAsli': rWAsli,
        'Email': email,
        'TempatLahir': tempatLahir,
        'TanggalLahir': tanggalLahir,
        'NomorHP': nomorHP,
        'StatusAnggota': statusAnggota,
        'Photo': photo,
      };
}

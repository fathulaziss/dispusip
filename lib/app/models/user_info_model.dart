class UserInfoModel {
  UserInfoModel({
    this.nomorAnggota = '',
    this.namaLengkap = '',
    this.alamatDomisili = '',
    this.kelurahanDomisili = '',
    this.kecamatanDomisili = '',
    this.kotaDomisili = '',
    this.rTDomisili = '',
    this.rWDomisili = '',
    this.alamatAsli = '',
    this.kelurahanAsli = '',
    this.kecamatanAsli = '',
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
        kelurahanDomisili: json['KelurahanDomisili'] ?? '',
        kecamatanDomisili: json['KecamatanDomisili'] ?? '',
        kotaDomisili: json['KotaDomisili'] ?? '',
        rTDomisili: json['RTDomisili'] ?? '',
        rWDomisili: json['RWDomisili'] ?? '',
        alamatAsli: json['AlamatAsli'] ?? '',
        kelurahanAsli: json['KelurahanAsli'] ?? '',
        kecamatanAsli: json['KecamatanAsli'] ?? '',
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
  String kelurahanDomisili;
  String kecamatanDomisili;
  String kotaDomisili;
  String rTDomisili;
  String rWDomisili;
  String alamatAsli;
  String kelurahanAsli;
  String kecamatanAsli;
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
        'KelurahanDomisili': kelurahanDomisili,
        'KecamatanDomisili': kecamatanDomisili,
        'KotaDomisili': kotaDomisili,
        'RTDomisili': rTDomisili,
        'RWDomisili': rWDomisili,
        'AlamatAsli': alamatAsli,
        'KelurahanAsli': kelurahanAsli,
        'KecamatanAsli': kecamatanAsli,
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

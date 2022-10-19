import 'package:dispusip/widgets/buttons/button_icon_vertical.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataMenu {
  List listDashboardMenu = [
    {
      'name': 'Katalog (OPAC)',
      'icon': 'ic_katalog_opac.png',
      'route': 'katalog',
    },
    {
      'name': 'Budiwangi',
      'icon': 'ic_budiwangi.png',
      'route': 'budiwangi',
    },
    {
      'name': 'e-Book',
      'icon': 'ic_ebook.png',
      'route': 'ebook',
    },
    {
      'name': 'e-Arsip',
      'icon': 'ic_earsip.png',
      'route': 'earsip',
    },
    {
      'name': 'Usulan Buku',
      'icon': 'ic_usulan_buku.png',
      'route': 'usulan-buku',
    },
    {
      'name': 'Pinjam Kolektif',
      'icon': 'ic_pinjam_kolektif.png',
      'route': 'pinjam-kolektif',
    },
    {
      'name': 'Lare Osing',
      'icon': 'ic_lare_osing.png',
      'route': 'lare-osing',
    },
    {
      'name': 'KliK',
      'icon': 'ic_klik.png',
      'route': 'klik',
    },
    {
      'name': 'Kritik & saran',
      'icon': 'ic_kritik_saran.png',
      'route': 'kritik-saran',
    },
    {
      'name': 'e-Resource',
      'icon': 'ic_budiwangi.png',
      'route': 'eresource',
    },
    {
      'name': 'Data NPP',
      'icon': 'ic_katalog_opac.png',
      'route': 'data-npp',
    },
    {
      'name': 'Kunjungan Kelompok',
      'icon': 'ic_budiwangi.png',
      'route': 'kunjungan-kelompok',
    },
  ];

  Future<List<Widget>> getListMenu({List? list}) async {
    final listMenu = list ?? listDashboardMenu;
    final temp = <Widget>[];
    for (final menu in listMenu) {
      temp.add(
        ButtonIconVertical(
          icon: menu['icon'],
          text: menu['name'],
          onTap: () {
            Get.toNamed('/${menu['route']}');
          },
        ),
      );
    }

    return temp;
  }
}

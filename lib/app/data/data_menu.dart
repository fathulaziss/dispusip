import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/widgets/buttons/button_icon_vertical.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataMenu {
  List listDashboardMenu = [
    {
      'name': 'Katalog (OPAC)',
      'icon': 'ic_katalog_opac.png',
      'route': 'katalog',
      'active': false,
    },
    {
      'name': 'Budiwangi',
      'icon': 'ic_budiwangi.png',
      'route': 'budiwangi',
      'active': false,
    },
    {
      'name': 'e-Book',
      'icon': 'ic_ebook.png',
      'route': 'ebook',
      'active': false,
    },
    {
      'name': 'e-Arsip',
      'icon': 'ic_earsip.png',
      'route': 'earsip',
      'active': false,
    },
    {
      'name': 'Usulan Buku',
      'icon': 'ic_usulan_buku.png',
      'route': 'usulan-buku',
      'active': true,
    },
    {
      'name': 'Pinjam Kolektif',
      'icon': 'ic_pinjam_kolektif.png',
      'route': 'pinjam-kolektif',
      'active': true,
    },
    {
      'name': 'Lare Osing',
      'icon': 'ic_lare_osing.png',
      'route': 'lare-osing',
      'active': false,
    },
    {
      'name': 'KliK',
      'icon': 'ic_klik.png',
      'route': 'klik',
      'active': false,
    },
    {
      'name': 'Kritik & saran',
      'icon': 'ic_kritik_saran.png',
      'route': 'kritik-saran',
      'active': true,
    },
    {
      'name': 'e-Resource',
      'icon': 'ic_budiwangi.png',
      'route': 'eresource',
      'active': false,
    },
    {
      'name': 'Data NPP',
      'icon': 'ic_katalog_opac.png',
      'route': 'data-npp',
      'active': false,
    },
    {
      'name': 'Kunjungan Kelompok',
      'icon': 'ic_budiwangi.png',
      'route': 'kunjungan-kelompok',
      'active': true,
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
            if (menu['active'] == false) {
              Get.toNamed(Routes.UNDER_DEVELOPMENT);
              return;
            }
            Get.toNamed('/${menu['route']}');
          },
        ),
      );
    }

    return temp;
  }
}

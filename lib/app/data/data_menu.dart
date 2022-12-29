import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:dispusip/app/routes/app_pages.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:dispusip/widgets/buttons/button_icon_vertical.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataMenu {
  List listDashboardMenu = [
    {
      'name': 'OPAC',
      'icon': 'ic_katalog_opac.png',
      'route': 'katalog',
      'active': true,
      'link': '',
    },
    {
      'name': 'Budiwangi',
      'icon': 'ic_budiwangi.png',
      'route': 'budiwangi',
      'active': true,
      'link': 'https://dispusip.banyuwangikab.go.id/budiwangi/',
    },
    {
      'name': 'e-Book',
      'icon': 'ic_ebook.png',
      'route': 'ebook',
      'active': true,
      'link': 'https://ebook.banyuwangikab.go.id/',
    },
    {
      'name': 'Lare Osing',
      'icon': 'ic_lare_osing.png',
      'route': 'lare-osing',
      'active': true,
      'link': '',
    },
    {
      'name': 'KliK',
      'icon': 'ic_klik.png',
      'route': 'klik',
      'active': true,
      'link': '',
    },
    {
      'name': 'Pinjam Kolektif',
      'icon': 'ic_pinjam_kolektif.png',
      'route': 'pinjam-kolektif',
      'active': true,
      'link': '',
    },
    {
      'name': 'Usulan Buku',
      'icon': 'ic_usulan_buku.png',
      'route': 'usulan-buku',
      'active': true,
      'link': '',
    },
    {
      'name': 'e-Arsip',
      'icon': 'ic_earsip.png',
      'route': 'earsip',
      'active': false,
      'link': '',
    },
    {
      'name': 'Warna Pelangi',
      'icon': 'ic_warna_pelangi.png',
      'route': 'warna-pelangi',
      'active': true,
      'link': '',
    },
    {
      'name': 'Pusaka BWI',
      'icon': 'ic_pusaka_bwi.png',
      'route': 'pusaka-bwi',
      'active': false,
      'link': '',
    },
    {
      'name': 'e-Resource',
      'icon': 'ic_budiwangi.png',
      'route': 'eresource',
      'active': true,
      'link': 'https://e-resources.perpusnas.go.id/',
    },
    {
      'name': 'Rest Area',
      'icon': 'ic_rest_area.png',
      'route': 'rest-area',
      'active': true,
      'link': '',
    },
    {
      'name': 'SiPrabuwangi',
      'icon': 'ic_siprabuwangi.png',
      'route': 'siprabuwangi',
      'active': false,
      'link': '',
    },
    {
      'name': 'Kunjungan',
      'icon': 'ic_kunjungan.png',
      'route': 'kunjungan',
      'active': true,
      'link': '',
    },
    {
      'name': 'Kritik & saran',
      'icon': 'ic_kritik_saran.png',
      'route': 'kritik-saran',
      'active': true,
      'link': '',
    },
    // {
    //   'name': 'Data NPP',
    //   'icon': 'ic_katalog_opac.png',
    //   'route': 'data-npp',
    //   'active': true,
    //   'link': 'https://data.perpusnas.go.id/',
    // },
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
            if (menu['name'] == 'OPAC') {
              Get.find<HomeController>().navigation(1);
              return;
            }

            if (menu['active'] == true) {
              if (menu['link'] != '') {
                AppUtils.launchInBrowser(menu['link']);
                return;
              } else {
                Get.toNamed('/${menu['route']}');
                return;
              }
            }

            Get.toNamed(Routes.UNDER_DEVELOPMENT);
          },
        ),
      );
    }

    return temp;
  }
}

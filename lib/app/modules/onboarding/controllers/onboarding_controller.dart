import 'package:dispusip/app/modules/onboarding/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  PageController cSlideTile = PageController();
  RxInt slideIndex = 0.obs;
  List<OnboardingModel> listSlideTile = [
    OnboardingModel(
      image: 'img_onboarding1.png',
      title: 'Temukan Berbagai\nReferensi Buku',
      desc:
          'Sekarang lebih mudah\nuntuk mencari buku dan mengecek ketersediaanya',
    ),
    OnboardingModel(
      image: 'img_onboarding2.png',
      title: 'Cari Arsipmu\nLebih Gampang',
      desc:
          'Sekarang lebih mudah\nuntuk mencari arsip dan mengecek ketersediaanya',
    ),
    OnboardingModel(
      image: 'img_onboarding3.png',
      title: 'Tak Perlu Khawatir\nKena Suspend Karena Lupa',
      desc:
          'Sekarang kamu bisa diingatkan\nuntuk mengembalikan buku tepat waktu',
    ),
  ];
}

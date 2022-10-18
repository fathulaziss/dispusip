import 'package:dispusip/app/modules/home/models/book_model.dart';
import 'package:dispusip/app/modules/home/models/home_book_category_model.dart';
import 'package:dispusip/app/modules/home/models/home_news_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final pageController = PageController();
  RxInt selectedPage = 0.obs;
  List slider = [
    'Slider Banyuwangikab.go.id 1',
    'Slider Banyuwangikab.go.id 2',
    'Slider Banyuwangikab.go.id 3'
  ];
  RxInt activeSliderIndex = 0.obs;

  List<HomeBookCategoryModel> listBookCategory = [
    HomeBookCategoryModel(
      label: 'Ilmu Komputer, Informasi dan Umum',
      image: 'ic_category1.png',
    ),
    HomeBookCategoryModel(
      label: 'Filsafat dan Psikologi',
      image: 'ic_category2.png',
    ),
    HomeBookCategoryModel(
      label: 'Ilmu Agama',
      image: 'ic_category3.png',
    ),
    HomeBookCategoryModel(
      label: 'Ilmu-Ilmu Sosial',
      image: 'ic_category4.png',
    ),
    HomeBookCategoryModel(
      label: 'Bahasa',
      image: 'ic_category5.png',
    ),
    HomeBookCategoryModel(
      label: 'Ilmu Murni',
      image: 'ic_category6.png',
    ),
    HomeBookCategoryModel(
      label: 'Ilmu Terapan',
      image: 'ic_category7.png',
    ),
    HomeBookCategoryModel(
      label: 'Seni & Rekreasi',
      image: 'ic_category8.png',
    ),
    HomeBookCategoryModel(
      label: 'Kesusastraan',
      image: 'ic_category9.png',
    ),
    HomeBookCategoryModel(
      label: 'Sejarah dan Geografi',
      image: 'ic_category10.png',
    ),
  ];

  List<BookModel> listNewCollection = [
    BookModel(
      image: 'img_book1.png',
      name: 'Pidi Baiq',
      title: 'DILAN : Dia adalah Dilanku tahun 1990',
    ),
    BookModel(
      image: 'img_book2.png',
      name: 'Bintang',
      title: 'Ikan Hiu, Lagi Ngaca I Lope U, Buat Yang Baca',
    ),
    BookModel(
      image: 'img_book1.png',
      name: 'Pidi Baiq',
      title: 'DILAN : Dia adalah Dilanku tahun 1990',
    ),
  ];

  List<BookModel> listMostCollectionBorrowed = [
    BookModel(
      image: 'img_book1.png',
      name: 'Pidi Baiq',
      title: 'DILAN : Dia adalah Dilanku tahun 1990',
    ),
    BookModel(
      image: 'img_book5.png',
      name: 'Yulian Purnama',
      title: 'Kupas Tuntas Sutrah Shalat',
    ),
    BookModel(
      image: 'img_book1.png',
      name: 'Pidi Baiq',
      title: 'DILAN : Dia adalah Dilanku tahun 1990',
    ),
  ];

  List<HomeNewsModel> listNews = [
    HomeNewsModel(
      dateTime: '8 Februari 2022 | 15:00',
      title: 'Safari Literasi Duta Baca Indonesia 2022',
      image: 'img_news1.png',
    ),
    HomeNewsModel(
      dateTime: '8 Februari 2022 | 15:00',
      title: 'Safari Literasi Duta Baca Indonesia 2022',
      image: 'img_news1.png',
    ),
  ];
}

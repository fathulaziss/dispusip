import 'package:dispusip/app/data/data_home_dummy.dart';
import 'package:dispusip/app/modules/home/models/book_model.dart';
import 'package:dispusip/app/modules/home/models/home_book_category_model.dart';
import 'package:dispusip/app/modules/home/models/home_news_model.dart';
import 'package:dispusip/app/modules/home/models/home_slider_model.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final pageController = PageController();
  RxInt selectedPage = 0.obs;

  Rx<Color> backgroundColor = Colors.white.obs;

  RxList<HomeSliderModel> listSlider = <HomeSliderModel>[].obs;
  RxInt activeSliderIndex = 0.obs;

  RxList<HomeNewsModel> listNews = <HomeNewsModel>[].obs;

  RxList<HomeBookCategoryModel> listBookCategory =
      <HomeBookCategoryModel>[].obs;

  RxBool isLoading = false.obs;

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

  @override
  void onInit() {
    getSlider();
    getNews();
    getBookCategory();
    getMostCollectionBorrowed();
    super.onInit();
  }

  void navigation(int index) {
    selectedPage(index);
    pageController.jumpToPage(index);
    switch (index) {
      case 0:
        backgroundColor(Colors.white);
        break;
      case 1:
        backgroundColor(const Color(0xFFFCFCFC));
        break;
      case 2:
        backgroundColor(const Color(0xFFFCFCFC));
        break;
      case 3:
        backgroundColor(const Color(0xFFFCFCFC));
        break;
      default:
        backgroundColor(Colors.white);
    }
  }

  Future<void> getSlider() async {
    try {
      isLoading(true);
      await Future.delayed(const Duration(seconds: 3));
      isLoading(false);
      const r = sliderHome;
      listSlider(RxList.from(r.map((e) => HomeSliderModel.fromJson(e))));
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }

  Future<void> getBookCategory() async {
    try {
      const r = bookCategoryHome;
      listBookCategory(
        RxList.from(r.map((e) => HomeBookCategoryModel.fromJson(e))),
      );
    } catch (e) {
      logSys(e.toString());
    }
  }

  Future<void> getMostCollectionBorrowed() async {
    try {
      final r = await ApiService()
          .request(url: 'book/oftenborrowed', method: Method.GET);
    } catch (e) {
      logSys(e.toString());
    }
  }

  Future<void> getNews() async {
    try {
      isLoading(true);
      await Future.delayed(const Duration(seconds: 3));
      isLoading(false);
      const r = newsHome;
      listNews(RxList.from(r.map((e) => HomeNewsModel.fromJson(e))));
    } catch (e) {
      isLoading(false);
      logSys(e.toString());
    }
  }
}

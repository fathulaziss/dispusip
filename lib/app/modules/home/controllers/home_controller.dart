import 'package:dispusip/app/data/data_home.dart';
import 'package:dispusip/app/models/book_model2.dart';
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

  RxList<HomeBookCategoryModel> listBookCategory =
      <HomeBookCategoryModel>[].obs;

  RxList<BookModel2> listNewCollection = <BookModel2>[].obs;

  RxList<BookModel2> listMostCollectionBorrowed2 = <BookModel2>[].obs;

  RxList<HomeNewsModel> listNews = <HomeNewsModel>[].obs;

  RxBool isLoading = false.obs;
  RxBool isLoadingNewCollection = false.obs;
  RxBool isLoadingMostCollectionBorrowed = false.obs;
  RxBool isLoadingNews = false.obs;

  @override
  void onInit() {
    getBookCategory();
    getNewCollection();
    getMostCollectionBorrowed();
    getSlider();
    getNews();
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

  Future<void> getNewCollection() async {
    try {
      isLoadingNewCollection(true);

      final r =
          await ApiService().request(url: 'book/index', method: Method.GET);
      await Future.delayed(const Duration(seconds: 5));

      isLoadingNewCollection(false);

      final List data = r[0];

      listNewCollection(
        RxList.from(data.map((e) => BookModel2.fromJson(e))),
      );
    } catch (e) {
      isLoadingNewCollection(false);
      logSys(e.toString());
    }
  }

  Future<void> getMostCollectionBorrowed() async {
    try {
      isLoadingMostCollectionBorrowed(true);

      final r = await ApiService()
          .request(url: 'book/oftenborrowed', method: Method.GET);
      await Future.delayed(const Duration(seconds: 5));

      isLoadingMostCollectionBorrowed(false);

      final List data = r[0];

      listMostCollectionBorrowed2(
        RxList.from(data.map((e) => BookModel2.fromJson(e))),
      );
    } catch (e) {
      isLoadingMostCollectionBorrowed(false);
      logSys(e.toString());
    }
  }

  Future<void> getBookDetail(String id) async {
    try {
      await ApiService().request(url: 'book/detail/$id', method: Method.GET);
    } catch (e) {
      logSys(e.toString());
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

  Future<void> getNews() async {
    try {
      isLoadingNews(true);

      const data = newsHome2;
      listNews(RxList.from(data.map((e) => HomeNewsModel.fromJson(e))));

      await Future.delayed(const Duration(seconds: 5));

      isLoadingNews(false);
    } catch (e) {
      isLoadingNews(false);
      logSys(e.toString());
    }
  }
}

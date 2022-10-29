import 'package:dispusip/app/controllers/user_info_controller.dart';
import 'package:dispusip/app/data/data_home.dart';
import 'package:dispusip/app/models/book_model.dart';
import 'package:dispusip/app/models/news_author_model.dart';
import 'package:dispusip/app/models/news_media_model.dart';
import 'package:dispusip/app/models/news_model.dart';
import 'package:dispusip/app/modules/home/models/home_book_category_model.dart';
import 'package:dispusip/app/modules/home/models/home_slider_model.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/services/http_service.dart';
import 'package:dispusip/styles/styles.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final cUserInfo = Get.find<UserInfoController>();

  final pageController = PageController();
  RxInt selectedPage = 0.obs;

  Rx<Color> backgroundColor = Colors.white.obs;

  RxList<HomeSliderModel> listSlider = <HomeSliderModel>[].obs;
  RxInt activeSliderIndex = 0.obs;

  RxList<HomeBookCategoryModel> listBookCategory =
      <HomeBookCategoryModel>[].obs;

  RxList<BookModel> listNewCollection = <BookModel>[].obs;

  RxList<BookModel> listMostCollectionBorrowed = <BookModel>[].obs;

  RxList<NewsModel> listNews = <NewsModel>[].obs;
  RxList<NewsMediaModel> listNewsMedia = <NewsMediaModel>[].obs;
  RxList<NewsAuthorModel> listNewsAuthor = <NewsAuthorModel>[].obs;

  RxBool isLoadingSlider = false.obs;
  RxBool isLoadingNewCollection = false.obs;
  RxBool isLoadingMostCollectionBorrowed = false.obs;
  RxBool isLoadingNews = false.obs;

  @override
  void onInit() {
    cUserInfo.getProfile();
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
        RxList.from(data.map((e) => BookModel.fromJson(e))),
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

      listMostCollectionBorrowed(
        RxList.from(data.map((e) => BookModel.fromJson(e))),
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
      rethrow;
    }
  }

  Future<void> getSlider() async {
    try {
      isLoadingSlider(true);
      await Future.delayed(const Duration(seconds: 3));
      isLoadingSlider(false);
      const r = sliderHome;
      listSlider(RxList.from(r.map((e) => HomeSliderModel.fromJson(e))));
    } catch (e) {
      isLoadingSlider(false);
      logSys(e.toString());
    }
  }

  Future<void> getNews() async {
    try {
      isLoadingNews(true);

      final r = await HttpService().request(
        url: 'https://dispusip.banyuwangikab.go.id/wp-json/wp/v2/posts',
        method: Method.GET,
        isToken: false,
      );

      final List data = r;
      listNews(RxList.from(data.map((e) => NewsModel.fromJson(e))));

      await getNewsMedia();
      await getNewsAuthor();

      isLoadingNews(false);
    } catch (e) {
      isLoadingNews(false);
      logSys(e.toString());
    }
  }

  Future<void> getNewsMedia() async {
    try {
      for (final data in listNews) {
        final r = await HttpService().request(
          url: data.links['wp:featuredmedia'][0]['href'],
          method: Method.GET,
          isToken: false,
        );
        listNewsMedia.add(NewsMediaModel.fromJson(r));
      }
    } catch (e) {
      logSys(e.toString());
    }
  }

  Future<void> getNewsAuthor() async {
    try {
      for (final data in listNews) {
        final r = await HttpService().request(
          url: data.links['author'][0]['href'],
          method: Method.GET,
          isToken: false,
        );
        listNewsAuthor.add(NewsAuthorModel.fromJson(r));
      }
    } catch (e) {
      logSys(e.toString());
    }
  }
}

import 'package:dispusip/app/models/news_author_model.dart';
import 'package:dispusip/app/models/news_media_model.dart';
import 'package:dispusip/app/models/news_model.dart';
import 'package:dispusip/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class NewsController extends GetxController {
  final cHome = Get.find<HomeController>();

  Rx<NewsModel> news = NewsModel().obs;

  Rx<NewsMediaModel> newsMedia = NewsMediaModel().obs;

  Rx<NewsAuthorModel> newsAuthor = NewsAuthorModel().obs;

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  void initData() {
    final args = Get.arguments;
    if (args != null) {
      setNewsDetail(
        dataNews: args['news'],
        dataNewsMedia: args['news_media'],
        dataNewsAuthor: args['news_author'],
      );
    }
  }

  void setNewsDetail({
    required NewsModel dataNews,
    required NewsMediaModel dataNewsMedia,
    required NewsAuthorModel dataNewsAuthor,
  }) {
    news.value = dataNews;
    newsMedia.value = dataNewsMedia;
    newsAuthor.value = dataNewsAuthor;
  }
}

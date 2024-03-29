import 'package:dispusip/app.dart';
import 'package:dispusip/app_config.dart';
import 'package:dispusip/services/api_service.dart';
import 'package:dispusip/services/firebase_service.dart';
import 'package:dispusip/services/http_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

Future<void> setupApp({
  bool isProduction = false,
  bool isDevelopment = false,
  bool isStaging = false,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.appFlavor = isProduction
      ? Flavor.production
      : isStaging
          ? Flavor.staging
          : Flavor.development;
  await GetStorage.init();
  await initFirebase();
  await ApiService().init();
  await HttpService().init();

  start();
}

Future<void> initFirebase() async {
  await Firebase.initializeApp();
  await FirebaseService().initializeFirebaseMessaging();
  await FirebaseService().initializeFirebaseMessagingHandler();
}

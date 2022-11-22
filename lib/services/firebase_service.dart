import 'dart:convert';

import 'package:dispusip/app/controllers/user_info_controller.dart';
import 'package:dispusip/constants/constants.dart';
import 'package:dispusip/utils/app_storage.dart';
import 'package:dispusip/utils/app_utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class FirebaseService {
  static AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'dispusip_notification_channel', // id
    'High Importance Notifications', // title
    description:
        'This channel is used for important notifications.', // description
    importance: Importance.high,
  );

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {
    // If you're going to use other Firebase services in the background, such as Firestore,
    // make sure you call `initializeApp` before using other Firebase services.
    await Firebase.initializeApp();

    logSys('Handling a background message ${message.data}');
  }

  Future selectNotification(String? payload) async {
    if (payload != null) {
      final detailData = jsonDecode(payload);
      logSys('detailData : $detailData');
    }
  }

  Future<void> initializeFirebaseMessaging() async {
    await Firebase.initializeApp();
    await requestNotificationPermission();
    await FirebaseMessaging.instance.subscribeToTopic('dispusip');
    // Set the background messaging handler early on, as a named top-level function
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    const initializationSettingsAndroid =
        AndroidInitializationSettings('@drawable/logo_banyuwangi');

    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: DarwinInitializationSettings(),
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);

    /// Create an Android Notification Channel.
    ///
    /// We use this channel in the `AndroidManifest.xml` file to override the
    /// default FCM channel to enable heads up notifications.
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    await generateToken();
  }

  Future<void> initializeFirebaseMessagingHandler() async {
    // get initial message

    await FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) async {
      if (message != null) {
        // Api1.navigatePage(message.data);
      }
    });

    // Handle When App Open on Click
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      logSys('onmessageopen');
      Get.find<UserInfoController>().getDataUser();
      // Api1.navigatePage(message.data);
    });

    // Handler for onMessage
    FirebaseMessaging.onMessage.listen((message) {
      logSys('onMessage.listen');
      final notification = message.notification;
      final android = message.notification!.android;

      if (notification != null && android != null && !kIsWeb) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              icon: '@drawable/logo_banyuwangi',
              styleInformation: const BigTextStyleInformation(''),
              channelDescription: channel.description,
            ),
          ),
          payload: json.encode(
            {
              'action': message.data['action'],
              'data': message.data,
            },
          ),
        );
      }
      Get.find<UserInfoController>().getDataUser();
      //navigatePage(message);
    });
  }

  requestNotificationPermission() async {
    logSys('Firebase : requestNotificationPermission');
    final messaging = FirebaseMessaging.instance;

    final settings = await messaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      logSys('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      logSys('User granted provisional permission');
    } else {
      logSys('User declined or has not accepted permission');
    }
  }

  Future<void> generateToken() async {
    // Get FCM Token
    var fcmToken = '';
    //String token = "";
    try {
      fcmToken = await FirebaseMessaging.instance.getToken() ?? '';
      logSys('fcm token : $fcmToken');
      await AppStorage.write(key: FCM_TOKEN, value: fcmToken);
    } catch (e) {
      logSys('Generate Token Error : $e');
    }
  }
}

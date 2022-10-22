import 'dart:convert';
import 'dart:developer' as d;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:html/parser.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class AppUtils {
  static dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static Future<String> getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return 'Versi ${packageInfo.version}';
  }

  static Future<bool> checkIsJailBroken() async {
    if (kReleaseMode) {
      final b = await FlutterJailbreakDetection.jailbroken;
      return b;
    }
    return false;
  }

  static Future<bool> checkTokenValidity(String token) async {
    try {
      return !JwtDecoder.isExpired(token);
    } catch (e) {
      logSys(e.toString());
      return false;
    }
  }

  static bool isJsonSting(String s) {
    try {
      json.decode(s) as Map<String, dynamic>;
      return true;
    } on FormatException {
      return false;
    }
  }

  static Future<void> launchInBrowser(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  static removeTagHtml(value) {
    final document = parse(value);
    final parsedString = parse(document.body!.text).documentElement!.text;
    return parsedString;
  }
}

logSys(String s) {
  if (kDebugMode) {
    d.log(s);
  }
}

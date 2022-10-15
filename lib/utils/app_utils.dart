import 'dart:developer' as d;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_root_jailbreak/flutter_root_jailbreak.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppUtils {
  static dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static Future<String> getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return 'v${packageInfo.version}';
  }

  static Future<bool> checkIsJailBroken() async {
    if (kReleaseMode) {
      final b = await FlutterRootJailbreak.isRooted;
      final b2 = await FlutterRootJailbreak.isJailBroken;
      return b | b2;
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
}

logSys(String s) {
  if (kDebugMode) {
    d.log(s);
  }
}

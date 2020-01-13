import 'dart:async';

import 'package:flutter/services.dart';

class Quake {
  static const MethodChannel _channel =
      const MethodChannel('quake');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

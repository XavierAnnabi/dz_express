import 'dart:async';

import 'package:flutter/services.dart';

class DzExpress {
  static const MethodChannel _channel =
      const MethodChannel('dz_express');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quake/quake.dart';

void main() {
  const MethodChannel channel = MethodChannel('quake');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Quake.platformVersion, '42');
  });
}

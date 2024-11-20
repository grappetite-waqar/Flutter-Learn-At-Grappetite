import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/enums/environment.dart';

class _Config {
  String get appName => dotenv.env['APP_NAME']!;

  String getDefaultLanguageCode() {
    final deviceLanguageCode = Platform.localeName.split('_').firstOrNull;
    if (deviceLanguageCode == null) {
      return 'en';
    }
    return deviceLanguageCode;
  }

  final environment = Environment.valueOf(
    const String.fromEnvironment(
      'DART_ENV',
      defaultValue: 'staging',
    ),
  );
}

final config = _Config();

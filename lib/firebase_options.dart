// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA_wesT0OzVO--P6_qCj10NI0xPP2xwSus',
    appId: '1:1024984712786:web:442993290f10ac822c018b',
    messagingSenderId: '1024984712786',
    projectId: 'learn-at-grap',
    authDomain: 'learn-at-grap.firebaseapp.com',
    storageBucket: 'learn-at-grap.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbakKLZvtFbKAI1n9TzGyWxuZENvhllPo',
    appId: '1:1024984712786:android:fbea2aecb4889b552c018b',
    messagingSenderId: '1024984712786',
    projectId: 'learn-at-grap',
    storageBucket: 'learn-at-grap.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUQE6nOzTTI0mXQyboS5YOqikdg-HDRnw',
    appId: '1:1024984712786:ios:30259291bfedbb7b2c018b',
    messagingSenderId: '1024984712786',
    projectId: 'learn-at-grap',
    storageBucket: 'learn-at-grap.firebasestorage.app',
    iosBundleId: 'com.grappetite.learnatgrap',
  );
}

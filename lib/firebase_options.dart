// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCjR1G0i7HQmuQwhOb0hTcE3n1CRav9FmA',
    appId: '1:881596936265:android:b84968451180db8f388f98',
    messagingSenderId: '881596936265',
    projectId: 'test-weather-8dbdf',
    storageBucket: 'test-weather-8dbdf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAx_1QQYfK--4cgIlCC1pkpTASpxtA_GbE',
    appId: '1:881596936265:ios:6307879d6a06a9cf388f98',
    messagingSenderId: '881596936265',
    projectId: 'test-weather-8dbdf',
    storageBucket: 'test-weather-8dbdf.appspot.com',
    iosClientId: '881596936265-s0954l7g9rt3cmsvat20dre60e3gt5e3.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterChatting',
  );
}

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
    apiKey: 'AIzaSyDbirdm4YORjpvLl9GQLPtC_aOdnAdAxGA',
    appId: '1:1049387085340:web:a3c68ec44e55079a1479d9',
    messagingSenderId: '1049387085340',
    projectId: 'taskey-79e10',
    authDomain: 'taskey-79e10.firebaseapp.com',
    storageBucket: 'taskey-79e10.appspot.com',
    measurementId: 'G-CX69HW7664',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZ_9FIIGMSmmBwC2j8MEboEmkUgiENT8c',
    appId: '1:1049387085340:android:c073951a4bf94bda1479d9',
    messagingSenderId: '1049387085340',
    projectId: 'taskey-79e10',
    storageBucket: 'taskey-79e10.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBXFbwkx26S06t0h9dlrcAJ1Ei63L_pS64',
    appId: '1:1049387085340:ios:1351af3c5e5693b71479d9',
    messagingSenderId: '1049387085340',
    projectId: 'taskey-79e10',
    storageBucket: 'taskey-79e10.appspot.com',
    iosBundleId: 'com.example.taskey',
  );
}

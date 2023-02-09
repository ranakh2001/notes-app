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
        return macos;
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
    apiKey: 'AIzaSyDrQJPjWAjtOnIqCv6iiufh1Zp9axmiztI',
    appId: '1:716685044796:web:042c6c280223a3db426739',
    messagingSenderId: '716685044796',
    projectId: 'note-9448c',
    authDomain: 'note-9448c.firebaseapp.com',
    storageBucket: 'note-9448c.appspot.com',
    measurementId: 'G-QH9ETSXFYN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkJYaDwjqJa__j0z7zJayx711Z_sHdP6s',
    appId: '1:716685044796:android:efec7426b0c698de426739',
    messagingSenderId: '716685044796',
    projectId: 'note-9448c',
    storageBucket: 'note-9448c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClC3hyvrhbDp7mXEqaIHP9JqU8YghqrIc',
    appId: '1:716685044796:ios:1a92f627186edddb426739',
    messagingSenderId: '716685044796',
    projectId: 'note-9448c',
    storageBucket: 'note-9448c.appspot.com',
    iosClientId: '716685044796-icm3caqr0bp2jlsn56lgu25dovhtd2el.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClC3hyvrhbDp7mXEqaIHP9JqU8YghqrIc',
    appId: '1:716685044796:ios:1a92f627186edddb426739',
    messagingSenderId: '716685044796',
    projectId: 'note-9448c',
    storageBucket: 'note-9448c.appspot.com',
    iosClientId: '716685044796-icm3caqr0bp2jlsn56lgu25dovhtd2el.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}

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
    apiKey: 'AIzaSyCyEXNd6XSrecYS6ewZXfsHV7wTOccHbUw',
    appId: '1:988733301344:web:5c4665f6641c71b96fd905',
    messagingSenderId: '988733301344',
    projectId: 'netflixdemoapp',
    authDomain: 'netflixdemoapp.firebaseapp.com',
    databaseURL: 'https://netflixdemoapp-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'netflixdemoapp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD5IVCQPlHEfmFWA_dzgnj9x8MSQmE81hk',
    appId: '1:988733301344:android:55cb26fda180a8c06fd905',
    messagingSenderId: '988733301344',
    projectId: 'netflixdemoapp',
    databaseURL: 'https://netflixdemoapp-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'netflixdemoapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0fhU73mK2QMGzF80wN7gGUXgwK8zLN6E',
    appId: '1:988733301344:ios:81d0a51e7202fe1d6fd905',
    messagingSenderId: '988733301344',
    projectId: 'netflixdemoapp',
    databaseURL: 'https://netflixdemoapp-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'netflixdemoapp.appspot.com',
    iosBundleId: 'com.example.netflixProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0fhU73mK2QMGzF80wN7gGUXgwK8zLN6E',
    appId: '1:988733301344:ios:fac694d4a87d14ff6fd905',
    messagingSenderId: '988733301344',
    projectId: 'netflixdemoapp',
    databaseURL: 'https://netflixdemoapp-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'netflixdemoapp.appspot.com',
    iosBundleId: 'com.example.netflixProject.RunnerTests',
  );
}

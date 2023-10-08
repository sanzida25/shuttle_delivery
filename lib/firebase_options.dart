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
    apiKey: 'AIzaSyDpZXACT-2H5hpHMc-tpLoMThKxsk82qG4',
    appId: '1:80755438859:web:708187cfdbe95424f91e0e',
    messagingSenderId: '80755438859',
    projectId: 'shuttle-and-delivery-service',
    authDomain: 'shuttle-and-delivery-service.firebaseapp.com',
    storageBucket: 'shuttle-and-delivery-service.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBaPMgMXJ5Sxu_urL55rgRzY6TiK_YoMWg',
    appId: '1:80755438859:android:c84d4bf441f91870f91e0e',
    messagingSenderId: '80755438859',
    projectId: 'shuttle-and-delivery-service',
    storageBucket: 'shuttle-and-delivery-service.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDGX03v6A4HMt6ZIeVua6ANnUxNo0Rr2Q',
    appId: '1:80755438859:ios:802519364e76a26cf91e0e',
    messagingSenderId: '80755438859',
    projectId: 'shuttle-and-delivery-service',
    storageBucket: 'shuttle-and-delivery-service.appspot.com',
    iosBundleId: 'com.example.shuttleDelivery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDDGX03v6A4HMt6ZIeVua6ANnUxNo0Rr2Q',
    appId: '1:80755438859:ios:6757db0fa7b7135ff91e0e',
    messagingSenderId: '80755438859',
    projectId: 'shuttle-and-delivery-service',
    storageBucket: 'shuttle-and-delivery-service.appspot.com',
    iosBundleId: 'com.example.shuttleDelivery.RunnerTests',
  );
}

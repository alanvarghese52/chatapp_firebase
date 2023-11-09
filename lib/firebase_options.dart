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
    apiKey: 'AIzaSyAgRIpxJeeu6XlQNOAhNVrVfdGEEO1ycow',
    appId: '1:759637934891:web:b0f8f9d78041365e49bb6e',
    messagingSenderId: '759637934891',
    projectId: 'chatapp-f025a',
    authDomain: 'chatapp-f025a.firebaseapp.com',
    storageBucket: 'chatapp-f025a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSe_Y8biKsdRa0tS6trZOFHkRedTPkR2Q',
    appId: '1:759637934891:android:9013a2310c9cc81449bb6e',
    messagingSenderId: '759637934891',
    projectId: 'chatapp-f025a',
    storageBucket: 'chatapp-f025a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCeHiPM2r-4ZvRaqjfyxqXHU4SWEMqp5VI',
    appId: '1:759637934891:ios:095792560cbf6aa249bb6e',
    messagingSenderId: '759637934891',
    projectId: 'chatapp-f025a',
    storageBucket: 'chatapp-f025a.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCeHiPM2r-4ZvRaqjfyxqXHU4SWEMqp5VI',
    appId: '1:759637934891:ios:196cbbe345faf26549bb6e',
    messagingSenderId: '759637934891',
    projectId: 'chatapp-f025a',
    storageBucket: 'chatapp-f025a.appspot.com',
    iosBundleId: 'com.example.chatapp.RunnerTests',
  );
}
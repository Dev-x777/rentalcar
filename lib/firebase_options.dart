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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBYI0Yi8o1v6mGRLb_HO6hkRQW1f_FBhf0',
    appId: '1:863061194423:web:1aece124c8508498e7ff32',
    messagingSenderId: '863061194423',
    projectId: 'car-rental-v1-218d5',
    authDomain: 'car-rental-v1-218d5.firebaseapp.com',
    storageBucket: 'car-rental-v1-218d5.firebasestorage.app',
    measurementId: 'G-FK907VQXN4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmY5n4QYK_va3j9TeBy3yqKDM4MTScEBg',
    appId: '1:863061194423:android:8d41521cbec9b3fbe7ff32',
    messagingSenderId: '863061194423',
    projectId: 'car-rental-v1-218d5',
    storageBucket: 'car-rental-v1-218d5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCg71uvwYxqJ2_Be3bUGu8fYebjjoKhkug',
    appId: '1:863061194423:ios:94e683988ef8e5fde7ff32',
    messagingSenderId: '863061194423',
    projectId: 'car-rental-v1-218d5',
    storageBucket: 'car-rental-v1-218d5.firebasestorage.app',
    iosBundleId: 'com.example.rentalcar',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCg71uvwYxqJ2_Be3bUGu8fYebjjoKhkug',
    appId: '1:863061194423:ios:94e683988ef8e5fde7ff32',
    messagingSenderId: '863061194423',
    projectId: 'car-rental-v1-218d5',
    storageBucket: 'car-rental-v1-218d5.firebasestorage.app',
    iosBundleId: 'com.example.rentalcar',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBYI0Yi8o1v6mGRLb_HO6hkRQW1f_FBhf0',
    appId: '1:863061194423:web:8ed00ab370021b69e7ff32',
    messagingSenderId: '863061194423',
    projectId: 'car-rental-v1-218d5',
    authDomain: 'car-rental-v1-218d5.firebaseapp.com',
    storageBucket: 'car-rental-v1-218d5.firebasestorage.app',
    measurementId: 'G-4CBHZX73GL',
  );

}
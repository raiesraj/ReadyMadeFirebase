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
    apiKey: 'AIzaSyASSYKNkSWc-Fqx_UdxzVEqPKa6ashGq2o',
    appId: '1:875693155245:web:828d3aac3beda02753f724',
    messagingSenderId: '875693155245',
    projectId: 'practice-e97bc',
    authDomain: 'practice-e97bc.firebaseapp.com',
    storageBucket: 'practice-e97bc.firebasestorage.app',
    measurementId: 'G-P8WWGQDKHN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5bFES01Qqi3OrKqEhm6agphXgoQxNqds',
    appId: '1:875693155245:android:becb937c8b61c3ae53f724',
    messagingSenderId: '875693155245',
    projectId: 'practice-e97bc',
    storageBucket: 'practice-e97bc.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDeu8_Wbhb5EccjF72Smy1sB-4P2OSLIxk',
    appId: '1:875693155245:ios:cc0df23f770a03d253f724',
    messagingSenderId: '875693155245',
    projectId: 'practice-e97bc',
    storageBucket: 'practice-e97bc.firebasestorage.app',
    iosBundleId: 'com.example.practice',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDeu8_Wbhb5EccjF72Smy1sB-4P2OSLIxk',
    appId: '1:875693155245:ios:cc0df23f770a03d253f724',
    messagingSenderId: '875693155245',
    projectId: 'practice-e97bc',
    storageBucket: 'practice-e97bc.firebasestorage.app',
    iosBundleId: 'com.example.practice',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyASSYKNkSWc-Fqx_UdxzVEqPKa6ashGq2o',
    appId: '1:875693155245:web:83ae49ab92ee6c0d53f724',
    messagingSenderId: '875693155245',
    projectId: 'practice-e97bc',
    authDomain: 'practice-e97bc.firebaseapp.com',
    storageBucket: 'practice-e97bc.firebasestorage.app',
    measurementId: 'G-PNRY8XYNE8',
  );
}

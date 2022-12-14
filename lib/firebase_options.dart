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
    apiKey: 'AIzaSyBZU9J3Ue7ArrFnHDfxIj34RN7dr2uKA9A',
    appId: '1:141363319207:web:13df6f2245a245a5402682',
    messagingSenderId: '141363319207',
    projectId: 'gadgetkicks-54a5e',
    authDomain: 'gadgetkicks-54a5e.firebaseapp.com',
    storageBucket: 'gadgetkicks-54a5e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRV-sNd0e8DyLBXE3V3sRE7mcWDmGCYt4',
    appId: '1:141363319207:android:feaa9897b636acf2402682',
    messagingSenderId: '141363319207',
    projectId: 'gadgetkicks-54a5e',
    storageBucket: 'gadgetkicks-54a5e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKa88FaHdEVK_OWBlXI1mOCNwkzrFzvpM',
    appId: '1:141363319207:ios:43a9587067af78dc402682',
    messagingSenderId: '141363319207',
    projectId: 'gadgetkicks-54a5e',
    storageBucket: 'gadgetkicks-54a5e.appspot.com',
    iosClientId: '141363319207-40k60dnq66jvg18iq3ipcabnmdk78m2f.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAmazon',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCKa88FaHdEVK_OWBlXI1mOCNwkzrFzvpM',
    appId: '1:141363319207:ios:43a9587067af78dc402682',
    messagingSenderId: '141363319207',
    projectId: 'gadgetkicks-54a5e',
    storageBucket: 'gadgetkicks-54a5e.appspot.com',
    iosClientId: '141363319207-40k60dnq66jvg18iq3ipcabnmdk78m2f.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAmazon',
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_amazon/screens/allproductspage.dart';
import 'package:flutter_amazon/screens/apple_preview.dart';

import 'package:flutter_amazon/screens/signin/signin.dart';

import 'package:flutter_amazon/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        AllProductPage.id: (context) => const AllProductPage(),
        Signin.id: (context) => const Signin(),
        // PreviewScreen.id: (context) => PreviewScreen(
        //       iphoneproduct: IphoneProduct().,
        //     ),
      },
    );
  }
}

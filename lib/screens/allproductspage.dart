import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_amazon/product/productcore/apple.dart';
import 'package:flutter_amazon/product/productcore/laptops.dart';
import 'package:flutter_amazon/product/productcore/samsung.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/responsive.dart';
import '../widgets/menuitems.dart';

class AllProductPage extends StatefulWidget {
  static const id = "Allproduct";
  const AllProductPage({Key? key}) : super(key: key);

  @override
  _AllProductPageState createState() => _AllProductPageState();
}

class _AllProductPageState extends State<AllProductPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Navigation(),
              if (Responsive.isDesktop(context)) const AppleProductCard(),
              if (Responsive.isDesktop(context)) const LaptopProductCard(),
              if (Responsive.isDesktop(context)) const SamsungProductCard(),
              if (!Responsive.isDesktop(context)) const MobiPhoneProductCard(),
              if (!Responsive.isDesktop(context)) const MobSamsungProductCard(),
              if (!Responsive.isDesktop(context)) const MobLaptopProductCard(),
            ],
          ),
        ),
      ),
    );
  }
}

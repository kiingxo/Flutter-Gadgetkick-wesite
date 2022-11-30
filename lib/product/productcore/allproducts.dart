import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_amazon/utils/constants.dart';
import 'package:flutter_amazon/model/laptopmodel.dart';
import 'package:flutter_amazon/product/productcore/apple.dart';
import 'package:flutter_amazon/product/productcore/laptops.dart';
import 'package:flutter_amazon/product/productcore/samsung.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/responsive.dart';

class AllBrandsProduct extends StatefulWidget {
  static const id = "Allproducts";
  const AllBrandsProduct({Key? key}) : super(key: key);

  @override
  _AllBrandsProductState createState() => _AllBrandsProductState();
}

class _AllBrandsProductState extends State<AllBrandsProduct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            TabBar(
                indicatorColor: kSecondaryColor,
                unselectedLabelColor: Colors.black,
                labelColor: kPrimaryColor,
                indicatorWeight: 2.0,
                unselectedLabelStyle: TextStyle(
                  fontSize: size.width >= 414 ? 18 : 12,
                ),
                labelStyle: TextStyle(
                  fontSize: size.width >= 414 ? 18 : 12,
                  fontWeight: FontWeight.bold,
                ),
                tabs: const [
                  Tab(
                    text: "iPhone",
                  ),
                  Tab(
                    text: "Samsung",
                  ),
                  Tab(
                    text: "Laptops",
                  ),
                ]),
            if (Responsive.isDesktop(context))
              const SizedBox(
                height: 350,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: AppleProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: SamsungProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: LaptopProductCard(),
                    ),
                  ],
                ),
              ),
            if (!Responsive.isDesktop(context))
              const SizedBox(
                height: 600,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: MobiPhoneProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: MobSamsungProductCard(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: MobLaptopProductCard(),
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}

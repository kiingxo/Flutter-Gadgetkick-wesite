import 'package:flutter/material.dart';
import 'package:flutter_amazon/screens/allproductspage.dart';
import 'package:flutter_amazon/utils/constants.dart';
import 'package:flutter_amazon/product/productcore/trending.dart';
import 'package:flutter_amazon/product/products.dart';
import 'package:flutter_amazon/widgets/baner.dart';
import 'package:flutter_amazon/widgets/bottomnav.dart';
import 'package:flutter_amazon/widgets/buttomcard.dart';
import 'package:flutter_amazon/widgets/menuitems.dart';
import 'package:flutter_amazon/widgets/textfield.dart';

class HomeScreen extends StatefulWidget {
  static const id = "home";
  // final TextEditingController searchcontroller;
  const HomeScreen({
    Key? key,
    // required this.searchcontroller
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

late final TextEditingController searchcontroller;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      //scrollable widget
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Row(
                    children: [
                      const Text(
                        "GadgetKicks",
                        textScaleFactor: 1.6,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        "assets/images/logo.png",
                        height: 40,
                        width: 40,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    MenuItems(
                      isActive: true,
                      title: 'Home',
                      press: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MenuItems(
                      title: 'Products',
                      press: () {
                        Navigator.pushNamed(context, AllProductPage.id);
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MenuItems(
                      title: 'Contact Us',
                      press: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Navigation(),
            HeroBanner(),
            ProductSection(),
            Bottomcard(),
          ],
        ),
      ),
    );
  }
}

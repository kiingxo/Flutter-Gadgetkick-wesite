import 'package:flutter/material.dart';
import 'package:flutter_amazon/model/laptopmodel.dart';
import 'package:flutter_amazon/utils/constants.dart';
import 'package:flutter_amazon/widgets/menuitems.dart';

import '../widgets/button.dart';

class LaptopPreviewScreen extends StatelessWidget {
  final LaptopProduct laptopProduct;
  const LaptopPreviewScreen({super.key, required this.laptopProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 140,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Navigation(),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  height: 400,
                  child: Hero(
                    tag: "tag",
                    child: Image.asset(
                      laptopProduct.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  children: [
                    Text(
                      laptopProduct.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "₦${laptopProduct.price.toString()}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(height: 30),
                    ReusableButton(
                        text: "Add To Cart",
                        color: kPrimaryColor,
                        press: () {},
                        textcolor: Colors.white)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

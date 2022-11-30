import 'package:flutter/material.dart';
import 'package:flutter_amazon/utils/constants.dart';
import 'package:flutter_amazon/widgets/menuitems.dart';

import '../model/samsungmodel.dart';
import '../widgets/button.dart';

class AndroidPreviewScreen extends StatelessWidget {
  final SamsungProduct androidproducts;
  const AndroidPreviewScreen({super.key, required this.androidproducts});

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
                      androidproducts.image,
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
                      androidproducts.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "₦${androidproducts.price.toString()}",
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

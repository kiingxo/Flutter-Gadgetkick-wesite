import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_amazon/function.dart';
import 'package:flutter_amazon/screens/apple_preview.dart';
import 'package:get/route_manager.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/constants.dart';
import '../../model/iphonemodel.dart';

class AppleProductCard extends StatelessWidget {
  final index = 0;
  const AppleProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      //shrink wrap to avoid error
      shrinkWrap: true,
      physics: ScrollPhysics(),
      crossAxisCount: 4,
      itemCount: iPhoneProducts.length,
      itemBuilder: (BuildContext context, int index) => IphoneProducts(
        press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PreviewScreen(
                iphoneproduct: iPhoneProducts[index],
              ),
            )),
        iPhoneproduct: iPhoneProducts[index],
      ),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}

class MobiPhoneProductCard extends StatelessWidget {
  const MobiPhoneProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      //shrink wrap to avoid error
      shrinkWrap: true,
      physics: ScrollPhysics(),
      crossAxisCount: 2,
      itemCount: iPhoneProducts.length,
      itemBuilder: (BuildContext context, int index) => IphoneProducts(
        press: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PreviewScreen(
                iphoneproduct: iPhoneProducts[index],
              ),
            )),
        iPhoneproduct: iPhoneProducts[index],
      ),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}

class IphoneProducts extends StatefulWidget {
  final IphoneProduct iPhoneproduct;
  final VoidCallback press;
  const IphoneProducts({
    Key? key,
    required this.iPhoneproduct,
    required this.press,
  }) : super(key: key);

  @override
  State<IphoneProducts> createState() => _IphoneProductsState();
}

class _IphoneProductsState extends State<IphoneProducts> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: kDefaultDuration,
          width: 300,
          height: 250,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: kgreyColor, width: 3),
              boxShadow: [if (isHover) kDefaultShadow]),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // Placeholder(
                    //   fallbackHeight: 150,
                    //   fallbackWidth: 150,
                    Image.asset(
                      widget.iPhoneproduct.image,
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.iPhoneproduct.title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\₦${widget.iPhoneproduct.price}",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              isHover
                  ? Container(
                      color: Colors.black12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            color: kPrimaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            height: 40,
                            onPressed: () {},
                            child: const Text(
                              "Quick View",
                              style: TextStyle(color: kWhiteColor),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            color: kPrimaryColor,
                            height: 40,
                            onPressed: () {
                              // openwhatsapp();
                            },
                            child: const Text(
                              "Shop Now",
                              style: TextStyle(color: kWhiteColor),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ));
  }
}

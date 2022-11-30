import 'package:flutter/material.dart';
import 'package:flutter_amazon/screens/android_preview.dart';
import 'package:flutter_amazon/utils/constants.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../../model/samsungmodel.dart';

class SamsungProductCard extends StatelessWidget {
  const SamsungProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      //shrink wrap to avoid error
      shrinkWrap: true,
      physics: ScrollPhysics(),
      crossAxisCount: 4,
      itemCount: samsungProducts.length,
      itemBuilder: (BuildContext context, int index) => SamsungProducts(
        press: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AndroidPreviewScreen(
                  androidproducts: samsungProducts[index],
                ),
              ));
        },
        samsungproduct: samsungProducts[index],
      ),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}

class MobSamsungProductCard extends StatelessWidget {
  const MobSamsungProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      //shrink wrap to avoid error
      shrinkWrap: true,
      physics: ScrollPhysics(),
      crossAxisCount: 2,
      itemCount: samsungProducts.length,
      itemBuilder: (BuildContext context, int index) => SamsungProducts(
        press: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AndroidPreviewScreen(
                  androidproducts: samsungProducts[index],
                ),
              ));
        },
        samsungproduct: samsungProducts[index],
      ),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}

class SamsungProducts extends StatefulWidget {
  final SamsungProduct samsungproduct;
  final VoidCallback press;
  const SamsungProducts({
    Key? key,
    required this.samsungproduct,
    required this.press,
  }) : super(key: key);

  @override
  State<SamsungProducts> createState() => _SamsungProductsState();
}

class _SamsungProductsState extends State<SamsungProducts> {
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
                    // ),
                    Image.asset(
                      widget.samsungproduct.image,
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.samsungproduct.title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\₦${widget.samsungproduct.price}",
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
                            color: kSecondaryColor,
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
                            color: kSecondaryColor,
                            height: 40,
                            onPressed: () {},
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

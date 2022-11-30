import 'package:flutter/material.dart';
import 'package:flutter_amazon/screens/laptop_preview.dart';
import 'package:flutter_amazon/utils/constants.dart';
import 'package:flutter_amazon/model/laptopmodel.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../../model/laptopmodel.dart';

class LaptopProductCard extends StatelessWidget {
  const LaptopProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      //shrink wrap to avoid error
      shrinkWrap: true,
      physics: ScrollPhysics(),
      crossAxisCount: 4,
      itemCount: laptopProducts.length,
      itemBuilder: (BuildContext context, int index) => LaptopProducts(
        press: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LaptopPreviewScreen(
                  laptopProduct: laptopProducts[index],
                ),
              ));
        },
        laptopProduct: laptopProducts[index],
      ),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}

class MobLaptopProductCard extends StatelessWidget {
  const MobLaptopProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      //shrink wrap to avoid error
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      crossAxisCount: 2,
      itemCount: laptopProducts.length,
      itemBuilder: (BuildContext context, int index) => LaptopProducts(
        press: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LaptopPreviewScreen(
                  laptopProduct: laptopProducts[index],
                ),
              ));
        },
        laptopProduct: laptopProducts[index],
      ),
      staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
    );
  }
}

class LaptopProducts extends StatefulWidget {
  final LaptopProduct laptopProduct;
  final VoidCallback press;
  const LaptopProducts({
    Key? key,
    required this.laptopProduct,
    required this.press,
  }) : super(key: key);

  @override
  State<LaptopProducts> createState() => _LaptopProductsState();
}

class _LaptopProductsState extends State<LaptopProducts> {
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
                      widget.laptopProduct.image,
                      height: 150,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.laptopProduct.title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\₦${widget.laptopProduct.price}",
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

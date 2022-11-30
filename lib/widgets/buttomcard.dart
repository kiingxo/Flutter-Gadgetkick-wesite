import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_amazon/utils/constants.dart';
import 'package:flutter_amazon/model/trendingmodel.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Bottomcard extends StatelessWidget {
  const Bottomcard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Expanded(
              child: Information(
                title: "Store Locations",
                description: address,
              ),
            ),
            Expanded(
              child: Information(
                title: "Contact us",
                description: contactus,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Information extends StatelessWidget {
  final String title;
  final String? description;

  const Information({
    super.key,
    required this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          child: Container(
            // padding: const EdgeInsets.symmetric(vertical: 5),
            // margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: kSecondaryColor, width: 3),
              ),
            ),
            child: AutoSizeText(
              maxLines: 1,
              minFontSize: 16,
              style: TextStyle(
                fontSize: _size.width >= 500 ? 28 : 18,
                fontWeight: FontWeight.bold,
              ),
              title,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 150,
          padding: const EdgeInsets.symmetric(vertical: 5),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: kSecondaryColor, width: 3),
            ),
          ),
          child: Text(
            description!,
            style: TextStyle(
                letterSpacing: 1,
                fontSize: _size.width >= 414 ? 18 : 12,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}

class Contactus extends StatelessWidget {
  final String title;
  const Contactus({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // padding: const EdgeInsets.symmetric(vertical: 5),
          // margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: kSecondaryColor, width: 3),
            ),
          ),
          child: AutoSizeText(
            maxLines: 1,
            minFontSize: 16,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width >= 348 ? 22 : 17,
              fontWeight: FontWeight.bold,
            ),
            title,
          ),
        ),
        // SizedBox(
        //   height: 150,
        //   child: Row(
        //     children: [
        //       InkWell(
        //           child: Image.asset(
        //         "assets/images/twitter.jpeg",
        //         height: 30,
        //         width: 30,
        //       )),
        //       InkWell(
        //           child: Image.asset(
        //         "assets/images/insta",
        //         height: 30,
        //         width: 30,
        //       )),
        //       InkWell(
        //           child: Image.asset(
        //         "assets/images/insta",
        //         height: 30,
        //         width: 30,
        //       )),
        //     ],
        //   ),
        // )
      ],
    );
  }
}

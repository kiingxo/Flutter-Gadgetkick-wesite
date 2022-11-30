import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// _launchWhatsapp() async {
//     var whatsapp = "+91XXXXXXXXXX";
//     var whatsappAndroid =Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
//     if (await canLaunchUrl(whatsappAndroid)) {
//         await launchUrl(whatsappAndroid);
//     } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("WhatsApp is not installed on the device"),
//         ),
//       );
//     }
// }

whatsapp() async {
  print("israel");
  var contact = "+2348117849256";
  var androidUrl = "whatsapp://send?phone=$contact&text=Hi, I need some help";
  var iosUrl =
      "https://wa.me/$contact?text=${Uri.parse('Hi, I need some help')}";

  try {
    if (Platform.isIOS) {
      await launchUrl(Uri.parse(iosUrl));
    } else {
      await launchUrl(Uri.parse(androidUrl));
    }
  } on Exception {
    const SnackBar(
      content: Text("WhatsApp is not installed on the device"),
    );
  }
}

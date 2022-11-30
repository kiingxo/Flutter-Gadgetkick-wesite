import 'package:flutter/material.dart';
import 'package:flutter_amazon/screens/signin/signincore/signinrespnive.dart';

class Signin extends StatelessWidget {
  static const id = "signin";
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const LoginMobile();
          } else if (constraints.maxWidth > 600 && constraints.maxWidth < 900) {
            return const LoginMobile();
          } else {
            return const LoginDesktop();
          }
        },
      ),
    );
  }
}

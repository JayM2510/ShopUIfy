import 'package:flutter/material.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "SHOPUIFY!",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: Color.fromARGB(255, 255, 200, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Image.asset(
          image!,
          height: 330,
          width: 350,
        ),
      ],
    );
  }
}

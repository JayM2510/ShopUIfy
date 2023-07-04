import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: CircleBorder(),
        primary: Color(0xFFF5F6F9),
        elevation: 3,
      ),
      child: Ink(
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          icon,
          height: getProportionateScreenHeight(20),
          width: getProportionateScreenWidth(20),
        ),
      ),
    );
  }
}

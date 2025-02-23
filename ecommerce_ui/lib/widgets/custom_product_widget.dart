import 'package:ecommerce_ui/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomProductWidget extends StatelessWidget {
  CustomProductWidget({
    super.key,
    required this.imgPath,
    required this.discount,
    this.height,
    this.width,
  });
  final String imgPath;
  final int discount;
  double? height;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customContainerDecoration(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imgPath,
              height: height ?? 120,
              width:width ?? 230,
            ),
            Text(
              '$discount% Off',
              style: TextStyle(
                color: kSecondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration customContainerDecoration() {
    return BoxDecoration(
      color: Colors.white.withOpacity(.06),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: Colors.white.withOpacity(0.2),
        width: 1.5,
      ),
      boxShadow: [
        BoxShadow(
          color: kShadowColor.withOpacity(.05),
          offset: const Offset(0, 20),
          blurRadius: 6,
        ),
        BoxShadow(
          color: kShadowColor.withOpacity(.06),
          offset: const Offset(0, -20),
          blurRadius: 6,
        ),
      ],
    );
  }
}

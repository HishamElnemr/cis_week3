import 'package:ecommerce_ui/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Choose Your Bike',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: kShadowColor,
                offset: const Offset(0, 10),
                blurRadius: 6,
              ),
              BoxShadow(
                color: kShadowColor,
                offset: const Offset(0, -10),
                blurRadius: 6,
              ),
            ],
            color: kPrimaryColor,
          ),
          child: const Icon(
            Icons.search_outlined,
            size: 40,
          ),
        )
      ],
    );
  }
}

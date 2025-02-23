import 'package:ecommerce_ui/constants.dart';
import 'package:flutter/material.dart';

class TrendingBikesWidget extends StatelessWidget {
  const TrendingBikesWidget(
      {super.key,
      required this.imgPath,
      required this.description,
      required this.name,
      required this.price});
  final String imgPath;
  final String description;
  final String name;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
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
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.favorite_outline_rounded,
                color: kPrimaryColor,
              ),
              const SizedBox(height: 10),
              Image.asset(
                imgPath,
                height: 120,
                width: 180,
              ),
              const SizedBox(height: 10),
              Text(
                description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 15,
                  color: kSecondaryColor,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '$price \$',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

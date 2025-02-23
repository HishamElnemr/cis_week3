import 'package:ecommerce_ui/models/product_model.dart';
import 'package:ecommerce_ui/widgets/product_details_view_body.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ProductDetailsViewBody(
          product: product,
        ),
      ),
    );
  }
}

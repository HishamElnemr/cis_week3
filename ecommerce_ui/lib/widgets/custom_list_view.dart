import 'package:ecommerce_ui/custom_product_list.dart';
import 'package:ecommerce_ui/views/product_details_view.dart';
import 'package:ecommerce_ui/widgets/custom_product_widget.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: GestureDetector(
               onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsView(
                      product: products[index],
                    ),
                  ),
                );
              },
              child: CustomProductWidget(
                imgPath: products[index].image,
                discount: products[index].discount,
              ),
            ),
          );
        },
      ),
    );
  }
}

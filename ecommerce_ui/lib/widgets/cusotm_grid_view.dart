import 'package:ecommerce_ui/custom_product_list.dart';
import 'package:ecommerce_ui/views/product_details_view.dart';
import 'package:ecommerce_ui/widgets/trending_bikes_widget.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: products.length,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 290,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
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
              child: TrendingBikesWidget(
                imgPath: products[index].image,
                description: products[index].description,
                name: products[index].name,
                price: products[index].price,
              ),
            );
          }),
    );
  }
}

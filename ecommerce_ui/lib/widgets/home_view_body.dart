import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/widgets/cusotm_grid_view.dart';
import 'package:ecommerce_ui/widgets/custom_app_bar.dart';
import 'package:ecommerce_ui/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: const CustomListView(),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Trending Bikes',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomGridView(),
        ],
      ),
    );
  }
}

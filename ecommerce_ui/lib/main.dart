import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EcommerceUI());
}

class EcommerceUI extends StatelessWidget {
  const EcommerceUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
      ),
      home: const HomeView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_view/views/home_view.dart';

void main() {
  runApp(const LoginView());
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
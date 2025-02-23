import 'package:flutter/material.dart';
import 'package:login_view/widgets/custom_button.dart';
import 'package:login_view/widgets/custom_head_widget.dart';
import 'package:login_view/widgets/custom_text_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomHeadWidget(),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 40,
              color: Colors.blue[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(hintText: 'Email'),
          const SizedBox(
            height: 20,
          ),
          const CustomTextField(hintText: 'Password'),
          const SizedBox(
            height: 20,
          ),
          const CustomTextField(hintText: 'Confirm Password'),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () {},
            text: 'Sign Up',
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
            text: 'Login',
            width: double.infinity,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_view/views/sinup_view.dart';
import 'package:login_view/widgets/custom_button.dart';
import 'package:login_view/widgets/custom_head_widget.dart';
import 'package:login_view/widgets/custom_text_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
            'Login',
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
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                onPressed: () {},
                text: 'Login',
              ),
              Text(
                'Forgot Password ?',
                style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
            text: 'Sign Up',
            width: double.infinity,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignupView();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

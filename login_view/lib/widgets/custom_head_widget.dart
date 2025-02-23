import 'package:flutter/material.dart';

class CustomHeadWidget extends StatelessWidget {
  const CustomHeadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .45,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue.shade300,
          Colors.blue.shade600,
          Colors.blue.shade900,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          top: 40,
          left: 20,
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

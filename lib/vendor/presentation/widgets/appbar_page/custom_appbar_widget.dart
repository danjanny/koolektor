import 'package:flutter/material.dart';
import 'package:koolektor/utils/custom_colors.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String? text;

  const CustomAppBarWidget({super.key, this.text = 'Page Title'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: CustomColors.themeColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text!,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0))
        ],
      ),
    );
  }
}

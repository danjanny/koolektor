import 'package:flutter/material.dart';
import 'package:koolektor/utils/custom_colors.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String? text;
  final Widget? backIcon;
  final VoidCallback? onTapBackIcon;

  const CustomAppBarWidget(
      {super.key, this.backIcon, this.onTapBackIcon, this.text = 'Page Title'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: CustomColors.themeColor,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              child: backIcon ?? Container(), onTap: () => onTapBackIcon!()),
          Text(text!,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0)),
          Container(
            width: 16.0,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:koolektor/utils/config.dart';
import 'package:koolektor/utils/custom_colors.dart';
import 'package:koolektor/utils/dimension.dart';

class CustomSaveButton extends StatelessWidget {
  final VoidCallback? onPress;
  final Color? color;
  final String? text;

  const CustomSaveButton(
      {super.key,
      this.onPress,
      this.color = CustomColors.themeColor,
      this.text = 'Save'});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(Dimensions.formBorderRadius)),
            backgroundColor: color,
            minimumSize: const Size.fromHeight(55.0)),
        onPressed: () => onPress!(),
        child: Text(text!,
            style: TextStyle(
                fontFamily: Config.fontFamily,
                fontWeight: FontWeight.w600,
                fontSize: Dimensions.buttonTextFontSize)));
  }
}

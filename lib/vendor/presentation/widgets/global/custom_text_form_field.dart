import 'package:flutter/material.dart';
import 'package:koolektor/utils/config.dart';
import 'package:koolektor/utils/custom_colors.dart';

import '../../../../utils/dimension.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final TextEditingController? controller;
  final String? errorValidationMessage;
  final String? hintText;
  final int? maxLines;

  const CustomTextFormField(
      {super.key,
      this.label,
      this.controller,
      this.maxLines = 1,
      this.errorValidationMessage,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label!, style: TextStyle()),
        SizedBox(height: 10.0),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLines: maxLines!,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            errorStyle:
                TextStyle(fontFamily: Config.fontFamily, fontSize: 10.0),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: CustomColors.formFillColor,
                    width: 0.0,
                    style: BorderStyle.none),
                borderRadius:
                    BorderRadius.circular(Dimensions.formBorderRadius)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: CustomColors.formFillColor,
                    width: 0.0,
                    style: BorderStyle.none),
                borderRadius:
                    BorderRadius.circular(Dimensions.formBorderRadius)),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: CustomColors.formFillColor,
                    width: 0.0,
                    style: BorderStyle.none),
                borderRadius:
                    BorderRadius.circular(Dimensions.formBorderRadius)),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return errorValidationMessage;
            }
            return null;
          },
        )
      ],
    );
  }
}

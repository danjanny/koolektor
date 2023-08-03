import 'package:flutter/material.dart';
import 'package:koolektor/utils/custom_colors.dart';

import '../../../utils/viewport_util.dart';

class MainViewWidget extends StatelessWidget {
  final Widget? mainViewWidget;

  const MainViewWidget({super.key, this.mainViewWidget});

  @override
  Widget build(BuildContext context) {
    var viewportUtil = ViewportUtil.getLimitMaxWidthHeight(
        context, 375.0, CustomColors.borderColor);

    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: viewportUtil.maxWidth),
        child: mainViewWidget,
      ),
    ));
  }
}

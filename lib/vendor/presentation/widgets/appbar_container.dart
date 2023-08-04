import 'package:flutter/material.dart';
import 'package:koolektor/vendor/presentation/widgets/appbar_page/custom_appbar_widget.dart';

class AppBarContainer extends StatelessWidget {
  final Widget? mainView;
  final String? appBarText;
  final Widget? backIcon;
  final VoidCallback? onTapBackIcon;

  const AppBarContainer(
      {super.key,
      required this.mainView,
      this.appBarText = 'Page Title',
      this.backIcon,
      this.onTapBackIcon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 80.0),
            child: mainView!),
        Positioned(
          left: 0.0,
          right: 0.0,
          child: CustomAppBarWidget(
              text: appBarText!,
              backIcon: backIcon,
              onTapBackIcon: () => onTapBackIcon!()),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:koolektor/vendor/presentation/widgets/appbar_page/custom_appbar_widget.dart';

class AppBarContainer extends StatelessWidget {
  final Widget? mainView;
  final String? appBarText;

  const AppBarContainer(
      {super.key, required this.mainView, this.appBarText = 'Page Title'});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        mainView!,
        CustomAppBarWidget(text: appBarText!),
      ],
    );
  }
}

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:koolektor/route/koolektor_router.dart';
import 'package:koolektor/vendor/presentation/widgets/appbar_container.dart';
import 'package:koolektor/vendor/presentation/widgets/main_view_widget.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../../../utils/custom_colors.dart';
import '../../../utils/viewport_util.dart';
import '../widgets/global/custom_save_button.dart';

class AddThumbnailPage extends StatelessWidget {
  final ImagePicker _picker = ImagePicker();

  AddThumbnailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var viewportUtil = ViewportUtil.getLimitMaxWidthHeight(
        context, 375.0, CustomColors.borderColor);

    return MainViewWidget(
      mainViewWidget: AppBarContainer(
          backIcon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 22.0,
          ),
          onTapBackIcon: () {
            QR.navigator.replaceLastName(KoolektorRouter.addTitlePage);
          },
          appBarText: 'Add Thumbnail Page',
          mainView: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () async {
                      _openCamera();
                    },
                    child: Container(
                      color: Colors.grey.withOpacity(0.50),
                      width: viewportUtil.maxWidth * 0.75,
                      height: 200,
                      child: const Center(
                        child: Icon(Icons.image, size: 50.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 20.0,
                  ),
                ),
                CustomSaveButton(
                  text: 'Save & Continue',
                  onPress: () {},
                )
              ],
            ),
          )),
    );
  }

  void _openCamera() {}
}

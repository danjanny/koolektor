import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:koolektor/utils/global_util.dart';
import 'package:koolektor/vendor/data/models/post_model.dart';
import 'package:koolektor/vendor/presentation/widgets/appbar_container.dart';
import 'package:koolektor/vendor/presentation/widgets/global/custom_save_button.dart';
import 'package:koolektor/vendor/presentation/widgets/main_view_widget.dart';

import '../widgets/global/custom_text_form_field.dart';

class AddTitlePage extends StatelessWidget {
  final _addTitleForm = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descController = TextEditingController();

  AddTitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainViewWidget(
      mainViewWidget: AppBarContainer(
          appBarText: 'Add Title',
          mainView: Form(
            key: _addTitleForm,
            child: Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextFormField(
                    label: 'Title',
                    controller: _titleController,
                    errorValidationMessage: 'Title harus diisi',
                  ),
                  const SizedBox(height: 20.0),
                  CustomTextFormField(
                    label: 'Description',
                    maxLines: 5,
                    controller: _descController,
                    errorValidationMessage: 'Deskripsi harus diisi',
                  ),
                  const SizedBox(height: 20.0),
                  CustomSaveButton(
                    text: 'Save & Continue',
                    onPress: () {
                      if (_addTitleForm.currentState!.validate()) {
                        var postModel = PostModel(
                            title: _titleController.text,
                            description: _descController.text);
                      }
                    },
                  )
                ],
              ),
            ),
          )),
    );
  }
}

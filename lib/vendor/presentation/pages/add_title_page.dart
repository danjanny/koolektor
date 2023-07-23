import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:koolektor/route/koolektor_router.dart';
import 'package:koolektor/utils/global_util.dart';
import 'package:koolektor/vendor/data/models/post_model.dart';
import 'package:koolektor/vendor/domain/entities/post.dart';
import 'package:koolektor/vendor/presentation/manager/add_post_cubit/add_post_cubit.dart';
import 'package:koolektor/vendor/presentation/manager/add_post_cubit/add_post_state.dart';
import 'package:koolektor/vendor/presentation/widgets/appbar_container.dart';
import 'package:koolektor/vendor/presentation/widgets/global/custom_save_button.dart';
import 'package:koolektor/vendor/presentation/widgets/main_view_widget.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../widgets/global/custom_text_form_field.dart';

class AddTitlePage extends StatefulWidget {
  const AddTitlePage({super.key});

  @override
  State<AddTitlePage> createState() => _AddTitlePageState();
}

class _AddTitlePageState extends State<AddTitlePage> {
  final _addTitleForm = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descController = TextEditingController();

  @override
  void initState() {
    super.initState();
    var titlePageCurrentState = context.read<AddPostCubit>().post ?? Post();
    _titleController.text = titlePageCurrentState.title ?? '';
    _descController.text = titlePageCurrentState.description ?? '';
  }

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

                        context.read<AddPostCubit>().saveState(postModel);
                        QR.navigator
                            .replaceLastName(KoolektorRouter.addThumbnailPage);
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

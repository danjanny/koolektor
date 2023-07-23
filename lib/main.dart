import 'package:flutter/material.dart';
import 'package:koolektor/app.dart';
import 'package:koolektor/vendor/presentation/manager/add_post_cubit/add_post_cubit.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  QR.setUrlStrategy();

  var blocWidget = MultiBlocProvider(
      providers: [BlocProvider(create: (ctx) => AddPostCubit())], child: App());

  runApp(blocWidget);
}

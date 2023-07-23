import 'package:flutter/material.dart';
import 'package:koolektor/route/koolektor_router.dart';
import 'package:koolektor/utils/config.dart';
import 'package:qlevar_router/qlevar_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
      theme: ThemeData(
          fontFamily: Config.fontFamily, primaryColor: Config.themeColor),
      routeInformationParser: const QRouteInformationParser(),
      routerDelegate: QRouterDelegate(KoolektorRouter.routes));
}

import 'package:base_project/bloc/bloc_status/bloc_status_bloc.dart';
import 'package:base_project/constanta/cons_route.dart';
import 'package:base_project/screen/screen_login.dart';
import 'package:base_project/screen/screen_splash.dart';
import 'package:base_project/screen/screen_main.dart';
import 'package:base_project/utils/util_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageUtil.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          // BlocProvider<BlocStatusBloc>(
          //     create: (BuildContext context) =>
          //         BlocStatusBloc(repositories:ApiRepositoriesImpl())),
          BlocProvider<BlocStatusBloc>(
              create: (BuildContext context) => BlocStatusBloc()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (RouteSettings routeSettings) {
            final arguments = routeSettings.arguments;
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case RouteNames.routeSplashScreen:
                    return const ScreenSplash();
                  case RouteNames.routeLogin:
                    return const ScreenLogin();
                  case RouteNames.routeMain:
                    return const ScreenMain();
                  default:
                    return const ScreenSplash();
                }
              },
            );
          },
        ));
  }
}

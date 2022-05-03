import 'package:flutter/material.dart';
import 'package:practice_two/router/app_router.dart';
import 'package:practice_two/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRouter.initialRoute,
        routes: AppRouter.getAppRoutes(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        theme: AppTheme.ligthTheme);
  }
}

import 'package:flutter/material.dart';
import 'package:news_app/core/config/application_theme_manager.dart';
import 'package:news_app/core/config/pages_route_name.dart';
import 'package:news_app/core/config/routes.dart';
import 'package:news_app/pages/splash/splash_view.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ApplicationThemeManager.applicationThemeData,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: PagesRouteName.initial,
      onGenerateRoute: Routes.onGenerateRoutes,
      navigatorKey: navigatorKey,
    );
  }
}

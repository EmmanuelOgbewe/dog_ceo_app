import 'package:dog_ceo_take_home/app_theme.dart';
import 'package:dog_ceo_take_home/src/core/di/di_initializer.dart';
import 'package:dog_ceo_take_home/src/navigation/router/router.dart';
import 'package:flutter/material.dart';

class DogCeoApp extends StatelessWidget {
  const DogCeoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: sl<DogCeoRouter>().config(),
      theme: Themes.lightTheme,
      themeMode: ThemeMode.system,
    );
  }
}

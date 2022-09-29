// ignore_for_file: unused_import, duplicate_import

import 'dart:developer';

import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:Doingly/Screens/Welcome/welcome_screen.dart';
import 'package:Doingly/constants.dart';
import 'package:Doingly/providers/appstateManger.dart';
import 'package:provider/provider.dart' as provider;


class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    ColorScheme light = const ColorScheme.light(
      primary: Colors.blue,
      tertiary: Colors.green,
    );
    ColorScheme dark = const ColorScheme.dark(
      primary: Colors.blueAccent,
      tertiary: Colors.greenAccent,
    );

    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        final ColorScheme lightColorScheme = lightDynamic?.copyWith(
              surface: lightDynamic.onInverseSurface,
            ) ??
            light;
        final ColorScheme darkColorScheme = darkDynamic?.copyWith() ?? dark;

        return Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            

            return provider.ChangeNotifierProvider(
              create: (context) => AppStateManager(),
              builder: (context, _) {
                return MaterialApp(
                  theme: _configureThemeData(lightColorScheme),
                  darkTheme: _configureThemeData(darkColorScheme),
        
                  debugShowCheckedModeBanner: false,
                  home: WelcomeScreen(),
                );
              },
            );
          },
        );
      },
    );
  }

  ThemeData _configureThemeData(ColorScheme colorScheme) {
    return ThemeData(
      scaffoldBackgroundColor: kPrimaryLightColor,
      bottomAppBarColor: colorScheme.surfaceVariant,
      appBarTheme: AppBarTheme(),
    );
  }
}

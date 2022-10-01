// ignore_for_file: unused_import, duplicate_import
import 'dart:developer';
import 'package:Doingly/Screens/Welcome/splash.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:Doingly/Screens/Welcome/welcome_screen.dart';
import 'package:Doingly/constants.dart';
import 'package:Doingly/providers/appstateManger.dart';
import 'package:provider/provider.dart' as provider;
import 'Widgets/calendar_Widget/event_provider.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return provider.ChangeNotifierProvider<EventProvider>(
      create: (_) => new EventProvider(),
      builder: (context, _) {
        return Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            return provider.ChangeNotifierProvider(
              create: (context) => AppStateManager(),
              builder: (context, _) {
                return MaterialApp(
                  darkTheme: ThemeData.dark(),
                  themeMode: ThemeMode.system,
                  debugShowCheckedModeBanner: false,
                  home: SplashScreen(),
                );
              },
            );
          },
        );
      },
    );
  }
}

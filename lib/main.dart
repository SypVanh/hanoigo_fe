import 'package:flutter/material.dart';
import 'package:hanoigo/presentation/pages/app/app_injector.dart';
import 'package:hanoigo/presentation/pages/app/app_main.dart';
import 'package:hanoigo/utils/shared_prefs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Init singleton of shared preferences
  await sharedPrefs.init();

  /// Insert dependencies
  AppInjector.registerDependencies();

  runApp(
    const AppMain(),
  );
}

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:kumics/bindings/general_bindings.dart';
import 'package:kumics/splash.dart';
import 'package:kumics/utils/device/device_utility.dart';
import 'package:kumics/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    KDeviceUtils.hideStatusBarFully();
    return GetMaterialApp(
        initialBinding: GeneralBindings(),
        debugShowCheckedModeBanner: false,
        theme: KAppTheme.darkTheme,
        darkTheme: KAppTheme.darkTheme,
        home: const SplashScreen());
  }
}

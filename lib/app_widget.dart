import 'package:arquitetura/app_controller.dart';
import 'package:arquitetura/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: AppController.instance.themeSwitch,
        builder: (context, isDark, child) => MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: isDark ? Brightness.dark : Brightness.light,
              ),
              home: const HomePage(),
            ));
  }
}

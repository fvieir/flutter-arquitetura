import 'package:arquitetura/app_controller.dart';
import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatelessWidget {
  const CustomSwitchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, themeSwitch, child) => Switch(
        value: themeSwitch,
        onChanged: (value) {
          AppController.instance.themeChangeViewModel.changeTheme(value);
        },
      ),
    );
  }
}

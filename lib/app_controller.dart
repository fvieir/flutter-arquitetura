import 'package:arquitetura/services/shared_local_storage_local.dart';
import 'package:arquitetura/viewmodels/theme_change_view_model.dart';
import 'package:flutter/material.dart';

class AppController {
  static final AppController instance = AppController._();

  AppController._() {
    themeChangeViewModel.init();
  }

  final ThemeChangeViewModel themeChangeViewModel =
      ThemeChangeViewModel(storage: SharedLocalStorageLocal());

  bool get isDark => themeChangeViewModel.config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch =>
      themeChangeViewModel.config.themeSwitch;
}

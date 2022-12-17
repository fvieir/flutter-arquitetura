import 'package:arquitetura/interfaces/local_storage_interfaces.dart';
import 'package:arquitetura/models/app_model.dart';

class ThemeChangeViewModel {
  final ILocalStorage storage;

  final AppModel config = AppModel();

  ThemeChangeViewModel({required this.storage});

  Future init() async {
    await storage.get('isDark').then((value) {
      if (value != null) config.themeSwitch.value = value;
    });
  }

  changeTheme(bool value) {
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}

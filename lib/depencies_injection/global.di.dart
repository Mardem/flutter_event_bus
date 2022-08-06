import 'package:flutter_event_bus/main.dart';
import 'package:flutter_event_bus/modules/login/controller/login_controller.dart';

void resolveDependencies() {
  inject.registerFactory<LoginController>(() => LoginControllerImpl());
}

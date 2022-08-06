import 'dart:async';

import 'package:flutter_event_bus/main.dart';

import '../events/login_event.dart';

abstract class LoginController {
  late StreamSubscription<void> loginStream;
  Future<void> login();
}

class LoginControllerImpl implements LoginController {
  late StreamSubscription<void> loginStream;

  @override
  Future<void> login() async {
    events.fire(LoginEvent(email: 'marden@gmail.com', password: '12345'));
  }
}

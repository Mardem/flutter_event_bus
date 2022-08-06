import 'dart:async';

import 'package:flutter_event_bus/main.dart';
import 'package:flutter_event_bus/shared/analytics/analytic.provider.dart';
import 'package:flutter_event_bus/shared/analytics/events/analytic.event.dart';

import '../events/login_event.dart';

abstract class LoginController {
  late StreamSubscription<void> loginStream;
  Future<void> login();
}

class LoginControllerImpl implements LoginController {
  @override
  late StreamSubscription<void> loginStream;

  final AnalyticProvider provider = inject<AnalyticProvider>();

  @override
  Future<void> login() async {
    provider.fire(event: AnalyticEvent(name: 'user_login'));
    events.fire(LoginEvent(email: 'marden@gmail.com', password: '12345'));
  }
}

import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_event_bus/depencies_injection/global.di.dart';
import 'package:flutter_event_bus/modules/login/view/login_page.dart';
import 'package:get_it/get_it.dart';

EventBus events = EventBus();
GetIt inject = GetIt.instance;

void main() {
  resolveDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Event Bus',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginPage(),
    );
  }
}

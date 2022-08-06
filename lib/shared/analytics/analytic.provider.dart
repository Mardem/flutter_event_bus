import 'package:flutter_event_bus/main.dart';
import 'package:flutter_event_bus/shared/analytics/providers/base_analytic.provider.dart';

import 'events/analytic.event.dart';

abstract class AnalyticProvider {
  late BaseAnalyticProvider provider;
  void setProvider(BaseAnalyticProvider analyticProvider);
  Future<void> send({
    required String name,
    Map<String, String>? parameters,
  });
}

class AnalyticProviderImpl implements AnalyticProvider {
  AnalyticProviderImpl(this.provider) {
    setProvider(provider);
  }

  @override
  late BaseAnalyticProvider provider;

  @override
  void setProvider(BaseAnalyticProvider analyticProvider) {
    provider = analyticProvider;
  }

  @override
  Future<void> send({
    required String name,
    Map<String, String>? parameters,
  }) async {
    events.on<AnalyticEvent>().listen((AnalyticEvent event) async {
      await provider.send(name: event.name, parameters: event.parameters);
    });
  }
}

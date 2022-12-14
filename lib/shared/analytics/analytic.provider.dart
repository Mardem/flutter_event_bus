import 'package:flutter_event_bus/shared/analytics/providers/base_analytic.provider.dart';

import 'events/analytic.event.dart';

/// O AnalyticProvider é responsável por configurar ferramentas analítica
/// neste caso ele foi construído para ser agnóstico a implementação (Strategy Pattern).
/// Sendo assim, o mesmo pode receber quaisquer implementações de ferramentas analíticas
abstract class AnalyticProvider {
  late BaseAnalyticProvider provider;
  void setProvider(BaseAnalyticProvider analyticProvider);
  Future<void> fire({required AnalyticEvent event});
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
  Future<void> fire({
    required AnalyticEvent event,
  }) async =>
      provider.send(
        name: event.name,
        parameters: event.parameters,
      );
}

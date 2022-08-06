import 'package:flutter_event_bus/main.dart';
import 'package:flutter_event_bus/modules/login/controller/login_controller.dart';
import 'package:flutter_event_bus/shared/analytics/analytic.provider.dart';
import 'package:flutter_event_bus/shared/analytics/providers/firebase/firebase_analytic.dart';

void resolveDependencies() {
  inject.registerFactory<LoginController>(() => LoginControllerImpl());

  /// Aqui o temos o Strategy Pattern funcionando, neste caso foi construído uma
  /// implementação de FirebaseAnalytic mas pode ser usar qualquer uma outra apenas
  /// respeitando a integridade da interface solicitada
  inject.registerSingleton<AnalyticProvider>(
    AnalyticProviderImpl(FirebaseAnalytic()),
  );
}

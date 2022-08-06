import 'package:flutter_event_bus/shared/analytics/providers/base_analytic.provider.dart';
import 'package:logger/logger.dart';

/// Um exemplo simples de implementação do Stragegy junto com implementação real
class FirebaseAnalytic implements BaseAnalyticProvider {
  @override
  Future<void> send({
    required String name,
    Map<String, String>? parameters,
  }) async {
    final Logger logger = Logger();

    logger.i('Enviando para o Firebase...');
    await Future<void>.delayed(const Duration(seconds: 1));

    logger.d(name);
    logger.d(parameters);
    logger.i('Enviado com sucesso');
  }
}

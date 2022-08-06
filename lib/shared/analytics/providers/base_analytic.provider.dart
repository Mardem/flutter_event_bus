abstract class BaseAnalyticProvider {
  Future<void> send({
    required String name,
    Map<String, String>? parameters,
  });
}

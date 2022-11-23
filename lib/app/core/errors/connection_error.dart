abstract class Failure implements Exception {
  String get message;
}

class ConnectionError extends Failure {
  @override
  final String message;
  ConnectionError({required this.message});
}

class ErrorLoginEmail extends Failure {
  @override
  final String message;

  ErrorLoginEmail({required this.message});
}

class InternalError extends Failure {
  @override
  final String message;

  InternalError({required this.message});
}

class Endpoints {
  Endpoints._();

  static const int receiveTimeout = 15000;

  static const int connectionTimeout = 15000;
}

class _Keys {
  final generateImage = "/v1/images/generations";
}

final key = _Keys();
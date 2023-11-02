class NomeInvalidoException implements Exception {
  String error() => "Dado inválido";

  @override
  String toString() {
    return "DadoInvalidoException: ${error()}";
  }
}
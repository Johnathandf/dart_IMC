import 'package:test/test.dart';

// Função que calcula o IMC
double calcularIMC(double altura, double peso) {
  return peso / (altura * altura);
}

void main() {
  test('Calcula o valor do IMC', () {
    // Valores esperados
    final altura = 1.65;
    final peso = 50.0;
    final imcEsperado = 18.36547291092746;

    // Calcula o IMC
    final imcCalculado = calcularIMC(altura, peso);

    // Formata o IMC com duas casas decimais
    final imcFormatado = imcCalculado.toStringAsFixed(2);

    // Exibe o IMC formatado
    print("O IMC é: $imcFormatado");

    // Verifica se o IMC calculado é igual ao IMC esperado
    expect(imcFormatado, equals("18.37"));
  });
}

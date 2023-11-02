import 'models/console_utils.dart';
import 'package:meu_app_imc/models/usuario.dart';

void execute() {
  print("Bem-vindo ao sistema de Cálculo de IMC!");

  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do usuário:");
  double? altura = ConsoleUtils.lerDoubleComTexto("Digite a altura (em metros 0.00):");
  double? peso = ConsoleUtils.lerDoubleComTexto("Digite o peso (em quilogramas 00.0):");

  if (nome.isEmpty || altura == null || peso == null) {
    print("Dados inválidos. Certifique-se de preencher todos os campos corretamente.");
    return;
  }

  var usuario = Usuario(nome, peso, altura);
  double imc = usuario.calcularIMC();

  // Formata o IMC com duas casas decimais
  String imcFormatado = imc.toStringAsFixed(2);

  print("O IMC de ${usuario.getNome()} é: $imcFormatado");
  print("Resultado: ${usuario.obterResultado()}");
}

void main() {
  execute();
}

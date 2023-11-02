// usuario.dart
class Usuario {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Usuario(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  double calcularIMC() {
    return _peso / (_altura * _altura);
  }

  String obterResultado() {
    double imc = calcularIMC();
    if (imc < 16.0) {
      return "Magreza grave";
    } else if (imc >= 16.0 && imc < 17) {
      return "Magreza moderada";
    } else if (imc >= 17.0 && imc < 18.5) {
      return "Magreza Leve";
    } else if (imc >= 18.5 && imc < 25.0) {
      return "Saudavél";
    } else if (imc >= 25.0 && imc < 30.0) {
      return "Sobrepeso";
    }
    else if (imc >= 30.0 && imc < 35.0) {
      return "Obesidade Grau 1";
    }
    else if (imc >= 35.0 && imc < 40.0) {
      return "Obesidade Grau 2";
    }  
     else {
      return "Obesidade Grau 3";
    }
  }
}

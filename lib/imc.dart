class IMC {
  /// Calcula o IMC.
  ///
  /// Retorna o valor em double.
  static calculate({required double peso, required double altura}) {
    try {
      // tive que multiplicar por 10000 para fica proximo dovalor de classificacao.
      double resultado = peso / (altura * altura) * 10000;
      // Converto o resultado em string com duas posicao apos a ',' e converte a numeros novamente.
      resultado = double.parse(resultado.toStringAsFixed(2));
      return resultado;
    } catch (e) {
      print(e);
    }
  }

  /// Classifica o nivel de peso.
  ///
  /// [value] valor do imc.
  ///
  /// Retorna uma String.
  static String imcClassificacao(double value) {
    if (value < 16) {
      return 'Magreza gave';
    } else if (value >= 16 && value < 17) {
      return 'Magreza moderada';
    } else if (value >= 17 && value < 18.5) {
      return 'Magreza leve';
    } else if (value >= 18.5 && value < 25) {
      return 'Saudavel';
    } else if (value >= 25 && value < 30) {
      return 'Sobrepeso';
    } else if (value >= 30 && value < 35) {
      return 'Obesidade Grau 1';
    } else if (value > 35 && value < 40) {
      return 'Obesidade Grau 2 (severa)';
    } else {
      return 'Obesidade Grau 3 (morbida)';
    }
  }
}

calculate({required double peso, required double altura}) {
  double resultado = peso / (altura * altura) * 10000;
  try {
    resultado = double.parse(resultado.toStringAsFixed(2));
    return resultado;
  } catch (e) {
    throw e;
  }
}

imcClassificacao(double value) {
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

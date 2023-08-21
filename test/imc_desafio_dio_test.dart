import 'package:imc_desafio_dio/imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(peso: 57.8, altura: 158), 23.15);
  });
  test('classificacao do imc', () {
    expect(imcClassificacao(23.15), 'Saudavel');
  });
}

import 'package:imc_desafio_dio/imc.dart';
import 'package:imc_desafio_dio/utils/manipular_console.dart';

/// Interacao com o usuario.
void execute() {
  print('_-| Calculadora de IMC |-_');
  ManipularConsole().space();
  ManipularConsole().space();

  var name = ManipularConsole().digitacao('qual e seu nome?');
  ManipularConsole().space();
  print('entao e voce $name!');
  ManipularConsole().space();
  print('$name, para calcular seu IMC preciso de saber de alguns dados');
  var peso;
  var altura = 0.0;
  try {
    ManipularConsole().space();
    peso = ManipularConsole().digitacao('PESO:', eNumero: true);
    ManipularConsole().space();
    altura = ManipularConsole().digitacao('ALTURA', eNumero: true);
  } catch (e) {
    altura = ManipularConsole()
        .digitacao('Novamente, digite um numero dessa vez! ;-)', eNumero: true);
  }
  ManipularConsole().space();
  double imc = IMC.calculate(peso: peso, altura: altura);
  String classificacao = IMC.imcClassificacao(imc);
  print('$name, seu IMC e $imc, voce esta classificado como $classificacao');
  ManipularConsole().space();
  print('Ate Mais $name!');
}

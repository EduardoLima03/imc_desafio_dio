import 'dart:convert';
import 'dart:io';

class ManipularConsole {
  void space() => print('|');

  digitacao(String mensagen, {bool eNumero = false}) {
    print(mensagen);
    //valida se quando o dado vai ser digitado.
    if (!eNumero) {
      return stdin.readLineSync(encoding: utf8) ?? 'Padrao';
    } else {
      try {
        return double.parse(stdin.readLineSync(encoding: utf8) ?? '0');
      } catch (e) {
        rethrow;
      }
    }
  }
}

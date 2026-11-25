import 'dart:io';

import 'package:quiz_dart/perguntas.dart';

const letras = ['A', 'B', 'C', 'D'];

String lerNome() {
  while (true) {
    stdout.write('Qual é o seu nome? ');
    String? nome = stdin.readLineSync();
    if (nome != null && nome.trim().isNotEmpty) {
      return nome.trim();
    }
    print('Por favor, digite um nome.');
  }
}

String lerResposta() {
  while (true) {
    stdout.write('Sua resposta (A, B, C ou D): ');
    String? entrada = stdin.readLineSync();
    if (entrada != null) {
      String resposta = entrada.trim().toUpperCase();
      if (letras.contains(resposta)) {
        return resposta;
      }
    }
    print('Resposta inválida! Digite A, B, C ou D.');
  }
}

String mensagemFinal(String nome, int acertos, int total) {
  if (acertos == total) {
    return 'Incrível, $nome! Você é uma STAY de verdade!';
  } else if (acertos >= total / 2) {
    return 'Muito bem, $nome! Você conhece bastante, mas dá pra ouvir mais um pouco.';
  } else {
    return 'Foi quase, $nome! Hora de maratonar os MVs e tentar de novo.';
  }
}

void main() {
  print('=== QUIZ STRAY KIDS ===');
  print('Bem-vindo(a), STAY! Vamos ver o quanto você conhece os 8 meninos.\n');

  String nome = lerNome();
  print('\nBoa sorte, $nome! Vamos começar.\n');

  int acertos = 0;
  perguntas.shuffle();

  for (int i = 0; i < perguntas.length; i++) {
    Pergunta p = perguntas[i];

    print('Pergunta ${i + 1} de ${perguntas.length}');
    print(p.enunciado);
    for (int j = 0; j < p.alternativas.length; j++) {
      print('${letras[j]}) ${p.alternativas[j]}');
    }

    String resposta = lerResposta();

    if (resposta == p.correta) {
      print('Acertou, $nome!\n');
      acertos++;
    } else {
      int indice = letras.indexOf(p.correta);
      print(
        'Errou! A alternativa correta era ${p.correta}) ${p.alternativas[indice]}\n',
      );
    }
  }

  print('=== RESULTADO FINAL ===');
  print('$nome, você acertou $acertos de ${perguntas.length} perguntas.');
  print(mensagemFinal(nome, acertos, perguntas.length));
}

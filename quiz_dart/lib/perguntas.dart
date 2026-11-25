class Pergunta {
  final String enunciado;
  final List<String> alternativas;
  final String correta;

  Pergunta(this.enunciado, this.alternativas, this.correta);
}

final List<Pergunta> perguntas = [
  Pergunta('Quem é o líder do Stray Kids?', [
    'Felix',
    'Changbin',
    'Bang Chan',
    'Lee Know',
  ], 'C'),
  Pergunta('Quem é o maknae do Stray Kids?', [
    'I.N',
    'Seungmin',
    'Changbin',
    'Hyunjin',
  ], 'A'),
  Pergunta('Em que ano o Stray Kids debutou?', [
    '2020',
    '2018',
    '2016',
    '2025',
  ], 'B'),
  Pergunta('Quem é o main dancer do Stray Kids?', [
    'Felix',
    'Seungmin',
    'Han',
    'Lee Know',
  ], 'D'),
  Pergunta('Qual é a música de debut do Stray Kids?', [
    'District 9',
    'Case 143',
    'MANIAC',
    'Ceremony',
  ], 'A'),
];

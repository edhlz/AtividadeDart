import 'dart:io';

void main() {
  stdout.write("Nome do aluno: ");
  String nome = stdin.readLineSync()!;
  stdout.write("Nota 1: ");
  double nota1 = double.parse(stdin.readLineSync()!);
  stdout.write("Nota 2: ");
  double nota2 = double.parse(stdin.readLineSync()!);
  stdout.write("Nota 3: ");
  double nota3 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2 + nota3) / 3;

  print("\nNome: $nome");
  print("Média: ${media.toStringAsFixed(1)}");
  
  if (media >= 7) {
    print("Situação: Aprovado");
  } else if (media >= 5) {
    print("Situação: Recuperação");
  } else {
    print("Situação: Reprovado");
  }
}
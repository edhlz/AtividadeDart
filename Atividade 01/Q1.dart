import 'dart:io';

void main() {
  stdout.write("Salário atual: ");
  double salario = double.parse(stdin.readLineSync()!);

  double percentual;
  if (salario <= 1080) {
    percentual = 20;
  } else if (salario <= 1700) {
    percentual = 15;
  } else if (salario <= 2000) {
    percentual = 10;
  } else {
    percentual = 5;
  }

  double aumento = salario * (percentual / 100);
  double novoSalario = salario + aumento;

  print("Salário antes do reajuste: R\$${salario.toStringAsFixed(2)}");
  print("Percentual de aumento aplicado: ${percentual}%");
  print("Valor do aumento: R\$${aumento.toStringAsFixed(2)}");
  print("Novo salário: R\$${novoSalario.toStringAsFixed(2)}");
}
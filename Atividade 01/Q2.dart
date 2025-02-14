import 'dart:io';

void main() {
  stdout.write("Preço à vista: R\$ ");
  double preco = double.parse(stdin.readLineSync()!);
  stdout.write("Parcelamento (3 ou 5): ");
  int parcelas = int.parse(stdin.readLineSync()!);

  if (parcelas != 3 && parcelas != 5) {
    print("Opção inválida! Use 3 ou 5 parcelas.");
    return;
  }

  double total = preco * (parcelas == 3 ? 1.10 : 1.20);
  double mensal = total / parcelas;

  print("Total a pagar: R\$${total.toStringAsFixed(2)}");
  print("Valor de cada parcela: R\$${mensal.toStringAsFixed(2)}");
}
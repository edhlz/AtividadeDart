import 'dart:io';

void main() {
  stdout.write("Valor em merrecas: M\$ ");
  int valor = int.parse(stdin.readLineSync()!);

  List<int> moedas = [100, 50, 10, 5, 1];
  List<int> quantidades = [];

  for (int moeda in moedas) {
    int qtd = valor ~/ moeda;
    quantidades.add(qtd);
    valor = valor % moeda;
  }

  print("${quantidades[0]} moeda(s) de M\$ 100.00");
  print("${quantidades[1]} moeda(s) de M\$ 50.00");
  print("${quantidades[2]} moeda(s) de M\$ 10.00");
  print("${quantidades[3]} moeda(s) de M\$ 5.00");
  print("${quantidades[4]} moeda(s) de M\$ 1.00");
}
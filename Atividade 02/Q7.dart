class Funcionario {
  String nome;
  double _salario;

  Funcionario(this.nome, this._salario);

  double get salario => _salario;

  void aumentarSalario(double percentual) {
    if (percentual > 0) {
      _salario += _salario * percentual / 100;
    } else {
      print('Percentual deve ser maior que 0.');
    }
  }
}

void main() {
  Funcionario func = Funcionario('Pedro', 3000.0);
  print('Salário inicial: ${func.salario}');
  func.aumentarSalario(10); // aumento de 10%
  print('Salário após aumento: ${func.salario}');
}

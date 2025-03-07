class Funcionario {
  final int id;
  String nome;
  String cargo;
  double _salario;

  Funcionario(this.id, this.nome, this.cargo, this._salario);

  double get salario => _salario;

  void aumentarSalario(double percentual) {
    if (percentual > 0) {
      _salario *= (1 + percentual / 100);
    } else {
      print("O percentual de aumento deve ser positivo.");
    }
  }

  void exibirInformacoes() {
    print('ID: $id');
    print('Nome: $nome');
    print('Cargo: $cargo');
    print('Salário: \$${_salario.toStringAsFixed(2)}');
    print('-----------------------------');
  }
}
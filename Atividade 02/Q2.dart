class Pessoa {
  String nome;
  int _idade;

  Pessoa(this.nome, this._idade);

  int get getIdade => _idade;

  set setIdade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    } else {
      print('Idade não pode ser negativa.');
    }
  }

  void exibirDados() {
    print('Nome: $nome, Idade: $_idade');
  }
}

void main() {
  Pessoa pessoa1 = Pessoa('Sandra', 30);
  pessoa1.exibirDados();

  pessoa1.setIdade = 30;
  print('Nova idade: ${pessoa1.getIdade}');

  pessoa1.setIdade = -5; 
  print('Idade final: ${pessoa1.getIdade}');
}

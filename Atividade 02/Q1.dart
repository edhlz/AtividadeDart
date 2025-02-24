class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados() {
    print('Nome: $nome, Idade: $idade');
  }
}

void main() {
  Pessoa pessoa1 = Pessoa('Sandra', 30);
  pessoa1.exibirDados();
}

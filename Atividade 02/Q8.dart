import 'dart:io';

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados() {
    print('Nome: $nome, Idade: $idade');
  }
}

class Cadastro {
  List<Pessoa> pessoas = [];

  void adicionarPessoa(Pessoa p) {
    pessoas.add(p);
    print('Pessoa adicionada com sucesso.');
  }

  void listarPessoas() {
    if (pessoas.isEmpty) {
      print('Nenhuma pessoa cadastrada.');
    } else {
      for (var p in pessoas) {
        p.exibirDados();
      }
    }
  }
}

void main() {
  Cadastro cadastro = Cadastro();

  while (true) {
    print('\nMenu:');
    print('1. Adicionar Pessoa');
    print('2. Listar Pessoas');
    print('3. Sair');
    stdout.write('Escolha uma opção: ');
    String? opcao = stdin.readLineSync();

    if (opcao == '1') {
      stdout.write('Digite o nome: ');
      String? nome = stdin.readLineSync();
      stdout.write('Digite a idade: ');
      int idade = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
      if (nome != null && nome.isNotEmpty) {
        cadastro.adicionarPessoa(Pessoa(nome, idade));
      } else {
        print('Nome inválido.');
      }
    } else if (opcao == '2') {
      cadastro.listarPessoas();
    } else if (opcao == '3') {
      print('Saindo...');
      break;
    } else {
      print('Opção inválida.');
    }
  }
}

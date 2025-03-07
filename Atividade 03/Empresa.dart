import 'Funcionario.dart';

class Empresa {
  List<Funcionario> funcionarios = [];

  void adicionarFuncionario(Funcionario funcionario) {
    funcionarios.add(funcionario);
  }

  void removerFuncionario(int id) {
    funcionarios.removeWhere((funcionario) => funcionario.id == id);
  }

  void listarFuncionarios() {
    for (var funcionario in funcionarios) {
      funcionario.exibirInformacoes();
    }
  }
}
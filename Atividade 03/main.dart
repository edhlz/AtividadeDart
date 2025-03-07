import 'Empresa.dart';
import 'Funcionario.dart';

void main() {
  Empresa empresa = Empresa();

  Funcionario funcionario1 = Funcionario(1, 'Fernando Oliveira', 'Desenvolvedor', 4000.0);
  Funcionario funcionario2 = Funcionario(2, 'Henrique Ignacio', 'Gerente de Marketing', 3000.0);

  empresa.adicionarFuncionario(funcionario1);
  empresa.adicionarFuncionario(funcionario2);

  print('Funcionários cadastrados:');
  empresa.listarFuncionarios();

  funcionario1.aumentarSalario(10);
  funcionario2.aumentarSalario(5);

  print('\nFuncionários após aumento salarial:');
  empresa.listarFuncionarios();
  empresa.removerFuncionario(1);

  print('\nFuncionários após remoção:');
  empresa.listarFuncionarios();
}
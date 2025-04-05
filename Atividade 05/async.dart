void main() async {
  print('Iniciando...');
  
  String mensagem = await buscarDados();
  print(mensagem);
  
  print('Fim!');
}

Future<String> buscarDados() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Dados carregados!';
}
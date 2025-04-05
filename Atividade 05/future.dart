void main() {
  print('Calculando');
  
  calcularResultado().then((valor) {
    print('Resultado: $valor');
  }).catchError((erro) {
    print('Erro: $erro');
  });
}

Future<int> calcularResultado() async {
  await Future.delayed(Duration(seconds: 1));

  if (DateTime.now().second % 2 == 0) {
    return 42;
  } else {
    throw Exception('Erro no cálculo!');
  }
}
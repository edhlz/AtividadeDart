void main() {
  Stream<int> contador = Stream.periodic(
    Duration(seconds: 1),
    (contador) => contador + 1,
  ).take(5); 

  contador.listen(
    (valor) => print('Valor: $valor'),
    onDone: () => print('Stream concluído!'),
  );
}
class Produto {
  String nome;
  double _preco;

  Produto(this.nome, this._preco);

  Produto.desconto(String nome, double precoOriginal, double desconto)
      : nome = nome,
        _preco = (precoOriginal - desconto) < 0 ? 0 : (precoOriginal - desconto);

  double get preco => _preco;
}

void main() {
  Produto p1 = Produto('Iphone', 2500.0);
  Produto p2 = Produto.desconto('Computador', 1500.0, 300.0);

  print('Produto: ${p1.nome}, Preço: ${p1.preco}');
  print('Produto: ${p2.nome}, Preço com desconto: ${p2.preco}');
}

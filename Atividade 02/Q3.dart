class Carro {
  String marca;
  String modelo;
  int _preco;

  Carro(this.marca, this.modelo, this._preco);

  int get getPreco => _preco;

  set setPreco(int novoPreco) {
    if (novoPreco >= 0) {
      _preco = novoPreco;
    } else {
      print('Preço não pode ser negativo.');
    }
  }

  void exibirDetalhes() {
    print('Marca: $marca, Modelo: $modelo, Preço: $_preco');
  }
}

void main() {
  Carro carro1 = Carro('Fiat', 'Uno', 80000);
  Carro carro2 = Carro('Honda', 'Civic', 90000);

  carro1.setPreco = 85000;
  carro2.setPreco = 95000;

  carro1.exibirDetalhes();
  carro2.exibirDetalhes();
}

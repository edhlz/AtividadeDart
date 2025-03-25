class Produto {
  String _nome;
  double _preco;
  int _quantidadeEmEstoque;
  String? _descricao;

  Produto({
    required String nome,
    required double preco,
    required int quantidadeEmEstoque,
    String? descricao,
  })  : _nome = nome,
        _preco = preco,
        _quantidadeEmEstoque = quantidadeEmEstoque,
        _descricao = descricao;

  String get nome => _nome;
  double get preco => _preco;
  int get quantidadeEmEstoque => _quantidadeEmEstoque;
  String? get descricao => _descricao;

  set nome(String value) => _nome = value;
  set preco(double value) => _preco = value;
  set quantidadeEmEstoque(int value) => _quantidadeEmEstoque = value;
  set descricao(String? value) => _descricao = value;

  bool vender(int quantidade) {
    if (quantidade <= 0 || quantidade > _quantidadeEmEstoque) {
      return false;
    }
    _quantidadeEmEstoque -= quantidade;
    return true;
  }

  void reporEstoque(int quantidade) {
    _quantidadeEmEstoque += quantidade;
  }
}

void main() {
  Produto camiseta = Produto(
    nome: "Camiseta simples",
    preco: 49.90,
    quantidadeEmEstoque: 50,
    descricao: "100% poliester",
  );

  Produto caneca = Produto(
    nome: "Caneca personalizada",
    preco: 29.90,
    quantidadeEmEstoque: 20,
  );

  print("Estoque inicial da camiseta: ${camiseta.quantidadeEmEstoque}");
  camiseta.vender(5);
  print("Estoque após venda: ${camiseta.quantidadeEmEstoque}");
  
  print("\nTentando vender 60 canecas:");
  print(caneca.vender(60) ? "Venda realizada" : "Estoque insuficiente");
  
  caneca.reporEstoque(10);
  print("\nEstoque da caneca após reposição: ${caneca.quantidadeEmEstoque}");

  camiseta.preco = 54.90;
  camiseta.descricao = "Nova coleção outono/inverno";
  print("\nNovo preço da camiseta: R\$${camiseta.preco}");
  print("Nova descrição: ${camiseta.descricao ?? 'Sem descrição'}");
}
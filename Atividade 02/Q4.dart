class ContaBancaria {
  String titular;
  double _saldo;

  ContaBancaria(this.titular, this._saldo);

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print('Depositado: $valor. Novo saldo: $_saldo');
    } else {
      print('Valor inválido para depósito.');
    }
  }

  void sacar(double valor) {
    if (valor > _saldo) {
      print('Saldo insuficiente.');
    } else if (valor <= 0) {
      print('Valor inválido para saque.');
    } else {
      _saldo -= valor;
      print('Sacado: $valor. Saldo restante: $_saldo');
    }
  }

  double getSaldo() => _saldo;
}

void main() {
  ContaBancaria conta = ContaBancaria('Sandra', 1000.0);
  conta.depositar(500.0);
  conta.sacar(200.0);
  print('Saldo final: ${conta.getSaldo()}');
}

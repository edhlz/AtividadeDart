class Aluno {
  String nome;
  double _nota1;
  double _nota2;

  Aluno(this.nome, this._nota1, this._nota2);

  double calcularMedia() {
    return (_nota1 + _nota2) / 2;
  }

  String verificarAprovacao() {
    return calcularMedia() >= 7 ? 'Aprovado' : 'Reprovado';
  }
}

void main() {
  Aluno aluno = Aluno('Sandra', 8.5, 6.5);
  double media = aluno.calcularMedia();
  print('Média: $media');
  print('Situação: ${aluno.verificarAprovacao()}');
}

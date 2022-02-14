void main(){
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = "Luan";
  pessoa1.idade = 20;
  print(pessoa1.nome);

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = "Daniel";
  pessoa2.casado = true;
  print(pessoa2.nome);
}

class Pessoa {
  String? nome;
  int? idade;
  bool casado = false;
}
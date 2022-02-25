void main (){
  Pessoa pessoa1 = Pessoa(nome: "Luan", idade: 20);
  print(pessoa1.nome);

  Pessoa? pessoa2;
  print(pessoa2?.nome.toUpperCase());
  pessoa2?.comer();
  print(pessoa2?.cidade?.toUpperCase());
}

class Pessoa {
  Pessoa({required this.nome, required  this.idade});

  String nome;
  int idade;

  String? cidade;

  void comer(){
    print("comendo");
  }
}
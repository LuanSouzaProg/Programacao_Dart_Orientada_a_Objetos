void main(){
  Pessoa pessoa1 = Pessoa(nome: "Luan", idade: 20);
  print(pessoa1.nome);
  print(pessoa1.idade);

  Pessoa pessoa2 = pessoa1;
  print(pessoa2.nome);
  print(pessoa2.idade);

  funcao(pessoa1);
  print(pessoa1.idade);

  int numero = 10;
  funcao2(numero);
  print(numero);
}

void funcao(Pessoa pessoa){
  pessoa.idade ++;
}

void funcao2(int x){
  x = 20;
}


class Pessoa {
  Pessoa({required this.nome, required  this.idade});

  String nome;
  int idade;
}
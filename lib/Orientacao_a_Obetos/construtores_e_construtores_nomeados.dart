void main(){
  Pessoa pessoa1 = Pessoa.solteira(nome: "Luan", idade: 20);
  print(pessoa1.nome);

  pessoa1.trocarNome("Souza");
  print(pessoa1.idade);

  print(pessoa1.aniversario());
  pessoa1.casar();
  pessoa1.casado;

  Pessoa pessoa2 = Pessoa.casada(nome: "Daniel", idade: 32);
  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.aniversario());
}

class Pessoa {

  Pessoa({required this.nome, required  this.idade, this.casado = false}){
    print("Criando o $nome com idade $idade");
  }

  Pessoa.casada({required this.nome, required  this.idade, this.casado = true});


  Pessoa.solteira({required this.nome, required  this.idade, this.casado = false});

  String nome;
  int idade;
  bool casado;

  int? aniversario(){
    print("Parabéns! $nome");
      idade = idade + 1;
    return idade;
  }

  void casar(){
    casado = true;
  }

  void trocarNome(String novoNome){
    nome = novoNome;
  }
}
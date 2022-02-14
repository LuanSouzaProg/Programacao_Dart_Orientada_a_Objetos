void main(){
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = "Luan";
  pessoa1.idade = 20;
  print(pessoa1.nome);

  pessoa1.trocarNome("Souza");
  print(pessoa1.idade);

  print(pessoa1.aniversario());
  pessoa1.casar();
  pessoa1.casado;

  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = "Daniel";
  pessoa2.idade = 32;
  pessoa2.casado = true;
  print(pessoa2.nome);
  print(pessoa2.idade);

  print(pessoa2.aniversario());
}

class Pessoa {
  String? nome;
  int? idade;
  bool casado = false;

  int? aniversario(){
    print("Parabéns! $nome");
    if(idade != null){
      idade = idade! + 1;
    }
    return idade;
  }

  void casar(){
    casado = true;
  }

  void trocarNome(String novoNome){
    nome = novoNome;
  }
}
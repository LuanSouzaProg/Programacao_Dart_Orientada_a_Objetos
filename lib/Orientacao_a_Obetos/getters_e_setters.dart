void main(){
  Pessoa pessoa1 = Pessoa(nome: "Luan", idade: 20);
  Pessoa pessoa2 = Pessoa(nome: "Daniel", idade: 32, casado: true);

  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 10000000;

  print(pessoa1.dinheiro);
  print(pessoa2.dinheiro);
}

class Pessoa {
  Pessoa({required this.nome, required  this.idade, this.casado = false}){
    print("Criando o $nome com idade $idade");
  }

  String nome;
  int idade;
  bool casado;
  double? _dinheiro;

  int aniversario(){
    print("Parabéns! $nome");
    idade = idade + 1;
    return idade;
  }

  set dinheiro(double? valor){
    if(valor != null && valor >= 0 && valor < 1000000){
      print("Modificando dinheiro do $nome");
      _dinheiro = valor;
    }
  }

  double? get dinheiro{
    print("lendo o dinheiro do $nome");
    return _dinheiro;
  }
}
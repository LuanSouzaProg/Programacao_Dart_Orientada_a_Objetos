void main(){
  Pessoa pessoa1 = Pessoa(nome: "Luan", idade: 20);
  Pessoa pessoa2 = Pessoa(nome: "Daniel", idade: 32, casado: true);

  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 10000000;


  String? nome = pessoa1.nomeSecreto;
  if (nome != null) {
    print(nome.toUpperCase());
  }

  if (pessoa1.atributo != null) {
    print(pessoa1.atributo!.toUpperCase());
  }

}

class Pessoa {
  Pessoa({required this.nome, required  this.idade, this.casado = false}){
    print("Criando o $nome com idade $idade");
  }

  String nome;
  int idade;
  bool casado;
  double _dinheiro = 0;

  String? atributo = "Olá";
  String? _nomeSecreto = "Flutter";

  get nomeSecreto{
    String? nome = _nomeSecreto;
    if (nome != null) {
      _nomeSecreto = null;
      return nome;
    } else{
      return null;
    }
  }

  int aniversario(){
    print("Parabéns! $nome");
    idade = idade + 1;
    return idade;
  }

  set dinheiro(double valor){
    if(valor >= 0 && valor < 1000000){
      print("Modificando dinheiro do $nome");
      _dinheiro = valor;
    }
  }

  double get dinheiro{
    print("lendo o dinheiro do $nome");
    _dinheiro -= 100;
    return _dinheiro;
  }
}
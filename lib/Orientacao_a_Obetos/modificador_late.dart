void main (){
  Pessoa pessoa1 = Pessoa(nome: "Luan", idade: 20);

  pessoa1.cpf = "232.232.232-62";
  print(pessoa1.cpf);
  print(pessoa1.temperatura);
}

class Pessoa {
  Pessoa({required this.nome, required  this.idade});

  String nome;
  int idade;

  late String cpf;

  late double temperatura = medirTemperatura();

  double medirTemperatura(){
    print("Mediu temperatura");
    return 37.0;
  }
}
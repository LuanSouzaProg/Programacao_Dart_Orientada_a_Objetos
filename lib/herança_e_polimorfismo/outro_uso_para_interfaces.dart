void main(){
  Movel movel1 = Pessoa();
  //Movel movel1 = Carro();
  movel1.frente();
  movel1.esquerda();
  movel1.direita();

  Valor vende1 = Geladeira();
  //Valor vende1 = Carro();
  print(vende1.preco);
}

class Geladeira implements Valor{
  @override
  double preco() {
    return 1000;
  }
}

class Pessoa implements Movel{
  String? nome;

  @override
  void direita() {
  }

  @override
  void esquerda() {
  }

  @override
  void frente() {
  }

}

class Carro implements Movel, Valor{
  String? marca;

  @override
  void direita() {
  }

  @override
  void esquerda() {
  }

  @override
  void frente() {
  }

  @override
  double preco() {
    return 50000;
  }

}

abstract class Movel{
  void frente();
  void esquerda();
  void direita();
}

abstract class Valor{
  double preco();
}
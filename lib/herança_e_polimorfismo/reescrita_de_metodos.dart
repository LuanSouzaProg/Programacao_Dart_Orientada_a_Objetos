void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = "Urso";
  cachorro1.idade = 3;
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  print(cachorro1);

  Gato gato1 = Gato();
  gato1.nome = "Fly";
  gato1.idade = 5;
  gato1.comer();
  gato1.dormir();
  gato1.miar();

  print(gato1);

}

class Animal{
  String? nome;
  int? idade;

  void comer(){
    print("comer");
  }

  void dormir(){
    print("dormiu");
  }

  @override
  String toString(){
    return "Nome: $nome, Idade $idade";
  }
}

class Cachorro extends Animal{
  void latir(){
    print("Au Au");
  }

  @override
  void dormir(){
    print("Dormiu roncando");
  }

  @override
  String toString(){
    return "Cachorro - Nome: $nome, Idade $idade";
  }
}

class Gato extends Animal{
  void miar(){
    print("Miauuu");
  }

  @override
  String toString(){
    return "Gato - Nome: $nome, Idade $idade";
  }
}
void main() {
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = "Urso";
  cachorro1.idade = 3;
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  Gato gato1 = Gato();
  gato1.nome = "Fly";
  gato1.idade = 5;
  gato1.comer();
  gato1.dormir();
  gato1.miar();
}

class Animal {
  String? nome;
  int? idade;

  void comer(){
    print("comer");
  }

  void dormir(){
    print("dormir");
  }
}

class Cachorro extends Animal{
  void latir(){
    print("Au Au");
  }
}

class Gato extends Animal{
  void miar(){
    print("Miauuu");
  }
}
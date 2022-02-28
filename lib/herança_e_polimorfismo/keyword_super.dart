void main() {
  Cachorro cachorro1 = Cachorro("Urso", 3);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  print(cachorro1);

  Gato gato1 = Gato("fly", 5);
  gato1.comer();
  gato1.dormir();
  gato1.miar();

  print(gato1);
}

class Animal{
  Animal(this.nome, this.idade);

  String nome;
  int idade;

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
  Cachorro(String nome, int idade) : super(nome, idade){
    print("Criou o cachorro $nome");
  }

  void latir(){
    print("Au Au");
  }

  @override
  void dormir(){
    super.dormir();
    print("Dormiu roncando");
  }

  @override
  String toString(){
    return "Cachorro - Nome: $nome, Idade $idade";
  }
}

class Gato extends Animal{
  Gato(String nome, int idade) : super(nome, idade);

  void miar(){
    print("Miauuu");
  }

  @override
  String toString(){
    return "Gato - Nome: $nome, Idade $idade";
  }
}
void main (){
  Pessoa.alturaPadrao = 1.70;

  Pessoa pessoa1 = Pessoa(nome: "Luan", idade: 20);
  pessoa1.nome;
  pessoa1.idade;
  pessoa1.comer();

  Pessoa.atributoStatic = ", Luan";

  print(Pessoa.atributoStatic);

  print(Pessoa.metodoStatic());

  print(pessoa1.altura);

}

class Pessoa {
  Pessoa({required this.nome, required  this.idade});

    String nome;
    int idade;
    double altura = alturaPadrao;

    void comer(){
      print("comendo...");
    }

    static String atributoStatic = "abc";

    static String metodoStatic(){
      return "Olá Mundo $atributoStatic";
    }

    static double alturaPadrao = 0;
}

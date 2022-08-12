import 'dart:math' as math;

class CPFModel {
  math.Random rnd = math.Random();

  String geraNumeros() {
    String genCPF = '';
    int maxNumbers = 09;
    List listaNumeros =
        List.generate(maxNumbers, (_) => rnd.nextInt(maxNumbers));

    listaNumeros.add(calcPrimeiroDig(listaNumeros));
    listaNumeros.add(calcSegundoDig(listaNumeros));

    genCPF = listaNumeros.join('');

    return genCPF;
  }

  int calcPrimeiroDig(List numeros) {
    int primeiroDig = 0;
    int tamList = numeros.length;
    int somaTotal = 0;
    int cont = 10;
    int divisor = 11;
    int restDiv = 0;

    for (var i = 0; i < tamList; i++) {
      somaTotal += (numeros[i] as int) * cont;
      cont--;
    }

    restDiv = somaTotal % divisor;

    if (restDiv < 2) {
      primeiroDig = 0;
    } else {
      primeiroDig = divisor - restDiv;
    }

    return primeiroDig;
  }

  int calcSegundoDig(List numeros) {
    int segundoDig = 0;
    int tamList = numeros.length;
    int somaTotal = 0;
    int cont = 11;
    int divisor = 11;
    int restDiv = 0;

    for (var i = 0; i < tamList; i++) {
      somaTotal += (numeros[i] as int) * cont;
      cont--;
    }

    restDiv = somaTotal % divisor;

    if (restDiv < 2) {
      segundoDig = 0;
    } else {
      segundoDig = divisor - restDiv;
    }

    return segundoDig;
  }
}

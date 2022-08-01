import 'dart:math' as math;

class CPFModel {
  math.Random rnd = math.Random();

  String geraNumeros() {
    String genCPF = '';

    while (genCPF.length <= 10) {
      genCPF += rnd.nextInt(10).toString();
    }

    return genCPF;
  }
}

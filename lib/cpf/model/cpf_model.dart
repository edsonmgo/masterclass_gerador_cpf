import 'dart:math' as math;

class CPFModel {
  math.Random rnd = math.Random();

  String geraNumeros() {
    String genCPF = '';
    int maxNumbers = 08;

    while (genCPF.length <= maxNumbers) {
      genCPF += rnd.nextInt(maxNumbers).toString();
    }

    return genCPF;
  }
}

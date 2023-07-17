import 'dart:math' as math;

void main() {
  final raios = [5.0, 8.0, 12.0, 7.3, 18.0, 2.0, 25.0];
  resultadoRaios(raios);
}

double areaCirculo(double raio) => math.pi * math.pow(raio, 2);

double perimetroCirculo(double raio) => 2 * math.pi * raio;

void resultadoRaios(List<double> raios) {
  for (final raio in raios) {
    final area = areaCirculo(raio);
    final perimetro = perimetroCirculo(raio);

    print(
      'Raio: $raio, area: ${area.toStringAsFixed(2)}',
    );
    print('perimetro: ${perimetro.toStringAsFixed(2)}');
  }
}

void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];

  int somatorioFor = calcularSomatorioFor(numeros);
  int somatorioWhile = calcularSomatorioWhile(numeros);
  int somatorioRecursao = calcularSomatorioRecursao(numeros);
  int somatorioLista = calcularSomatorioLista(numeros);

  print('for: $somatorioFor');
  print('while: $somatorioWhile');
  print('recursão: $somatorioRecursao');
  print('lista: $somatorioLista');
}

int calcularSomatorioFor(List<int> numeros) {
  int somatorio = 0;

  for (int numero in numeros) {
    somatorio += numero;
  }

  return somatorio;
}

int calcularSomatorioWhile(List<int> numeros) {
  int somatorio = 0;
  int index = 0;

  while (index < numeros.length) {
    somatorio += numeros[index];
    index++;
  }

  return somatorio;
}

int calcularSomatorioRecursao(List<int> numeros,
    {int index = 0, int somatorio = 0}) {
  if (index >= numeros.length) {
    return somatorio;
  }

  somatorio += numeros[index];
  return calcularSomatorioRecursao(numeros,
      index: index + 1, somatorio: somatorio);
}

int calcularSomatorioLista(List<int> numeros) {
  return numeros
      .reduce((valorAnterior, valorAtual) => valorAnterior + valorAtual);
}

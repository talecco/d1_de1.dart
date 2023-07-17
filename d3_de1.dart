void main() {
  String texto =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.";

  String paragrafo = obterTextoDoParagrafo(texto);
  int numeroPalavras = obterNumeroPalavras(texto);
  int tamanhoTexto = obterTamanhoTexto(texto);
  int numeroFrases = obterNumeroFrases(texto);
  int numeroVogais = obterNumeroVogais(texto);
  List<String> consoantes = obterConsoantes(texto);

  print("Texto do parágrafo: $paragrafo");
  print("Número de palavras: $numeroPalavras");
  print("Tamanho do texto: $tamanhoTexto");
  print("Número de frases: $numeroFrases");
  print("Número total de vogais: $numeroVogais");
  print("Consoantes presentes no texto: ${consoantes.join(', ')}");
}

String obterTextoDoParagrafo(String texto) {
  List<String> paragrafos = texto.split("\n");
  return paragrafos[0];
}

int obterNumeroPalavras(String texto) {
  List<String> palavras = texto.split(" ");
  return palavras.length;
}

int obterTamanhoTexto(String texto) {
  return texto.length;
}

int obterNumeroFrases(String texto) {
  List<String> frases = texto.split(".");
  return frases.length - 1;
}

int obterNumeroVogais(String texto) {
  int numeroVogais = 0;
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];

  for (int i = 0; i < texto.length; i++) {
    String caractere = texto[i].toLowerCase();
    if (vogais.contains(caractere)) {
      numeroVogais++;
    }
  }

  return numeroVogais;
}

List<String> obterConsoantes(String texto) {
  List<String> consoantes = [];
  List<String> vogais = ['a', 'e', 'i', 'o', 'u'];
  List<String> pontuacoes = ['.', '!', '?', ',', ';', ':', '-', '_', '(', ')'];

  for (int i = 0; i < texto.length; i++) {
    String caractere = texto[i].toLowerCase();
    if (!vogais.contains(caractere) &&
        !pontuacoes.contains(caractere) &&
        caractere.trim() != "") {
      if (!consoantes.contains(caractere)) {
        consoantes.add(caractere);
      }
    }
  }

  return consoantes;
}

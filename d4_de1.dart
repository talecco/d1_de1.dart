import 'package:intl/intl.dart';

void main() {
  final dataAtual = DateTime.now();
  final dataCalculada = somarDiasUteis(dataAtual, 18);

  String formatoData = 'dd/MM/yyyy';
  String dataAtualFormatada = DateFormat(formatoData).format(dataAtual);
  String dataCalculadaFormatada = DateFormat(formatoData).format(dataCalculada);

  print('Data atual: $dataAtualFormatada');
  print('Data calculada: $dataCalculadaFormatada');
}

DateTime somarDiasUteis(DateTime data, int dias) {
  int diasSomados = 0;

  while (diasSomados < dias) {
    data = data.add(Duration(days: 1));

    if (data.weekday != DateTime.saturday && data.weekday != DateTime.sunday) {
      diasSomados++;
    }
  }

  return data;
}

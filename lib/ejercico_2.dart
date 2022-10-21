/*
Imprimir en pantalla si una persona ha entrado o no en la universidad.

La nota de corte es de 9.73 sobre 13

*/

import 'dart:io';

void main(List<String> args) {
  final double notaCorte = 9.73;

  stdout.write('Escribe tu nota!');
  double notaUser = double.parse(stdin.readLineSync()!);

  if (notaUser >= notaCorte) {
    print('¡Buenas notícias, has entrado en la Universidad!');
  } else {
    print('Lo sentimos, pero estás suspendido!');
  }
}

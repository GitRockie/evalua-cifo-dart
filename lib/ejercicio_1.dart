/*
Imprimir en pantalla:
Si un empleado tiene más del 25% de faltas en el trabajo en un mes está despedido
Si el empleado tiene el 100% de asistencia en un mes será bonificado
Si cuenta con más del 75% de asistencia mantendrá su sueldo.

*/

import 'dart:io';
import 'package:emojis/emojis.dart';

void main(List<String> args) {
  final int workMounth = 24;

  stdout.write('Escribe tu nombre, por favor!');
  String nombre = stdin.readLineSync().toString();
  stdout.write('Pon la cantidad de los días de tu asistencia en este mes: ');
  int diasAssist = int.parse(stdin.readLineSync()!).toInt();

  if (diasAssist == workMounth) {
    print(
        '¡Buenas notícias, $nombre! Parece que te gusta tu trabajo, tienes 100% de asistencia en este mes. Te espera un bono ${Emojis.bullseye}');
  } else if (diasAssist < workMounth && diasAssist >= 18) {
    print(
        'Hola, $nombre, cuentas con más del 75% de asistencia mantendrá su sueldo ${Emojis.greenHeart}');
  } else if (diasAssist > workMounth) {
    print(
        'Hey, $nombre, verifica si has puesto bien los días, no puede superar 24');
  } else {
    print('Hey, $nombre, lo siento, pero estás despedido!');
  }
}

/*
Definir clase – 0,75 pts
TODO: Una clase es una instancia o un modelo. Sirve para almacenar las propiedades, métodos y los datos, para crear un objeto. 

iferencia entre una clase y una clase abstracta – 0,75 pts

TODO: Una clase abstracta puede contener atributos, métodos, constructores y por lo menos un método abstracto, pero no puede ser instanciada, solo heredada.

Definir que es un extends en Dart – 0,5 pts

TODO: Ponemos extends cuando deseeamos hacer referencia a la superclase y heredar sus propiedades o métodos.

Hacer la representación más adecuada en forma de clases del siguiente dibujo donde se representa un árbol con una clase “padre” y sus respectivas “clases hijas” - 3pts

*/

abstract class Tienda {}

class Ropa extends Tienda {}

class Bicicletas extends Tienda {}

class Deportivas extends Tienda {}

abstract class Verde {
  void verde() => print('Soy verde');
}

abstract class Naranja {
  void naranja() => print('Soy naranja');
}

class Camisetas extends Ropa with Verde {}

class Gorras extends Ropa with Naranja {}

class Mtb extends Bicicletas {}

class Carretera extends Bicicletas {}

class Adidas extends Deportivas {}

class Nike extends Deportivas {}

void main() {
  final camisetas = Camisetas();
  camisetas.verde();

  final gorras = Gorras();
  gorras.naranja();
}

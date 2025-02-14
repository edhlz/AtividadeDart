import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Valor de a: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Valor de b: ");
  double b = double.parse(stdin.readLineSync()!);
  stdout.write("Valor de c: ");
  double c = double.parse(stdin.readLineSync()!);

  double triangulo = (a * b) / 2;
  double circulo = pi * pow(c, 2);
  double trapezio = (a + b) / 2 * c;
  double quadrado = pow(b, 2).toDouble();
  double retangulo = a * b;

  print("a) Triângulo: ${triangulo.toStringAsFixed(2)}");
  print("b) Círculo: ${circulo.toStringAsFixed(2)}");
  print("c) Trapézio: ${trapezio.toStringAsFixed(2)}");
  print("d) Quadrado: ${quadrado.toStringAsFixed(2)}");
  print("e) Retângulo: ${retangulo.toStringAsFixed(2)}");
}
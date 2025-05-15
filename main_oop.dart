// OOP -> class + object
// class = blueprint 
// attribute -> karakteristik dari sebuah class
// method -> apa yg bs dibuat sebuah class

import "Person.dart";
import "Shape.dart";

void main(){
  // Object
  List<Person> persons = [];
  Person rich = Person("Rich", 20);
  // person.age = 20;
  // person.name = "Rich";
  rich.introduce();
  print(rich.birthday());

// Contoh Encapsulation
  rich.setName("Ivan"); // Setter -> utk set value
  print(rich.getName());  // getter -> utk mengetahui value

  // Contoh Abstraction
  Square square = Square(10.0);
  print(square.getArea);

  Circle circle = Circle(10.0);
  print(circle.getArea());

// Contoh polymorphism
  List<Shape> shapes = [square, circle];
}

// Pillars of OOP -> membuat programmer lebih gampang untuk mengimpelementasikan OOP
// 1. encapsulation -> mencegah modifikasi data dari luar class
// Cara dicapai: tambahin _ ke depan dari data, dan pakai getter dan setter

// 2. Abstraction -> menyembunyikan detail implementasi, jadi hanya menampilkan detail yang penting saja

// 3. Inheritance -> parent class mewariskan attribute dan method ke child class
// Cara dipakai: keyword extends

// 4. Polymorphism -> banyak bentuk, lebih fleksibel


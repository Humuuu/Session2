import 'dart:io';

// tipeData namaFunction(parameter){
//   bodyFunction
// }

int add(int a, int b){
  return a+ b;
}

void main() {
  // 1. Jenis Variabel
  // var, final, const, late

  // var name = "Rich";  // Tipe data string
  // name = 123; -> Error karena tipenya string bukan untuk simpan angka

  // final int age = 10; // variabel hanya bisa di set sekali saja
  // age = 15; -> Error karena sebelumnya sudah di set pakai final

  // const pi = 3.14;  // Tipe konstan tidak bisa di set ulang nilainya
  // pi = 4.00 -> Error karena tidak bisa direassign valuenya

  // bedanya: final -> kalau dkd set diawal gpp
  //          const -> awal harus di set valuenya

  // late String description;  // Tipe data late
  // description = "testing123";
  // print(description);

  // String? contoh = null;  // kalau mau null harus ada tanda tanya

  // 2. Input Output
  // Output
  // print("hello world");

  // Input
  // String? nama = stdin.readLineSync();
  // print("Name: ");
  // print(nama);

  // 2. Tipe Data
  // Angka: int, double
  // int age = 10;
  // double pi = 3.14;

  // String
  // String name = "Rich";
  // String desc = '''Halo
  // Halo
  // Halo''';
  // // print(desc);

  // Boolena
  // bool isTrue = true;
  // bool isFalse = false;

  // Collection
  // List
  // List<int> numbers = [5, 2, 3, 4, 5, 5, 6];
  // print(numbers);

  // Sets (hanya simpan angka unik)
  // Set<int> nonDupes = {1, 2, 3, 4, 4, 5, 5};
  // print(nonDupes); //-> Dia ga keluarin angka duplikat

  // numbers.add(123);
  // numbers.remove(5);  // akan hapus 5 pertama yang ditemui
  // numbers.removeAt((3));  // akan hapus index 3
  // print(numbers);

  // nonDupes.add(123);
  // nonDupes.remove(1);
  // print(nonDupes);

  // Map -> collection terdiri atas piringan antara key dan value
  // key = index
  // value = value di index
  // Map<String, String> phoneBook = {
  //   "Rich": "12345"
  // };

  // phoneBook["Ivan"] = "34567";
  // print(phoneBook["Ivan"]);

  // 3. Operator
  // Operator Arithmetics
  // int a = 5, b =2;

  // print(a+b);
  // print(a-b);
  // print(a*b);
  // print(a/b);
  // print(a~/b); // division hansilin int (pembulatan kebawah)
  // print(a%b);

  // Equality dan Relational Operator
  // int a = 9, b = 10;
  // print(a == b);  // Hasilin false
  // print(a != b);  // hasilin true
  // print(a > b);  // false
  // print(a <= b);  // false

  // Type Test Operator
  // var test = 10;
  // print(test is String);  // false
  // print(test is! String); // true

  // Assigment Operator
  // int a = 5, b = 4;
  // a += b;
  // a %= b;
  // print(a);

  // Null Assignment Operator
  // String? name;
  // name ??= "Rich";  // ??= -> Cek kalau var itu null maka dia set ke value, kalau dk null maka g ngaruh

  // print(name);

  // Logical Operator
  // bool a = true, b = false;

  // print(a && b);
  // print(a | b);
  // print(!b);
  // print(a ^ b);

  // Selection
  // if statements
  // int nilai = 90;

  // if(nilai >= 90)
  //   print("A");
  // else if (nilai >= 85)
  //   print("A-");
  // else if (nilai >= 80)
  //   print("B+");
  // else 
  //   print("B");

  // Switch
  // String weather = "Sunny";
  // switch(weather){
  //   case "Sunny":
  //     print("Let's go to the beach!");
  //     break;
    
  //   case "Rainy":
  //     print("Let's stay at home!");
  //     break;

  //   default:
  //     print("Let's chill");
  // }

  // Repetition
  // for
  // for(int i = 0; i < 10; i++){
  //   print(i);
  // }

  // while
  // int i = 0;
  // while(i < 10){
  //   print(i);
  //   i++;
  // }

  // do-wile
  // do{
  //   print(i);
  //   i++;
  // } while (i < 10);

// Test Function
print(add(1,2));

}
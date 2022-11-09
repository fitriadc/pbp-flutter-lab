# Task 7: Basic Element in Flutter
Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023
App Name : Counter 7

## Stateless Widget and Stateful Widget
- Stateless widget adalah widget yang bersifat statis dimana tidak terjadi perubahan data. Stateless widget hanya memiliki satu state saja, yaitu state awal.
- Stateful widget adalah widget yang bersifat dinamis dimana  dapat terjadi perubahan yang menyesuaikan dengan state yang berlaku. Stateful widget memiliki dua state, yaitu state awal dan state yang terjadi secara dinamis.

## Widget in Counter 7 Programme
1. MaterialApp, widget untuk membuat aplikasi yang memiliki material design.
2. ThemeData, widget untuk mengatur tema aplikasi.
3. Scaffold, widget untuk membuat layout widget.
4. AppBar, widget untuk membuat bar atas.
5. Column, widget untuk menampilkan widget secara vertikal.
6. Row, widget untuk menampilkan widget secara horizontal.
7. Container, widget untuk menampung widget lainnya.
8. FloatingActionButton, widget untuk membuat tombol.
9. Icon, widget untuk menampilkan icon.
10. Sizedbox, widget untuk menampilkan box dengan ukuran spesifik.
11. StatefulWidget, widget yang bisa berubah-ubah statenya. 
12. Statelesswidget, widget yang tidak bisa berubah state.
13. Text, widget untuk menciptakan teks.


## SetState() 
SetState adalah sebuah method dari statefulwidget yang berfungsi untuk memberitahu adanya perubahan internal state. Ketika setState dipanggil maka akan terjadi pembaharuan widget yang dilakukan dengan cara memanggil method build() untuk me-rebuild widget-widget kondisi sebelumnya.

## Difference Between Const vs Final
- const adalah variabel immutable yang bersifat konstan dan nilainya harus diketahui saat compile time. Namun setiap kali render bisa dideklarasikan ulang.
- final adalah variabel immutable yang tidak dapat diubah setelah dideklarasikan dan perlu langsung diinisiasi. Nilai dari variabel ini diketahui ketika run timee.

## Programme Implementation
1. Membuat aplikasi Flutter bernama counter_7 dengan perintah `flutter create counter_7`
2. Membuat counter_7 dengan homepage counter_7_page yang dibuat dari statefulwidget
3. Membuat tampilan program sesuai dengan ketentuan soal
4. Membuat fungsi untuk menambah dan mengurangi counter
```
void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
```
5. Membuat widget untuk menampilkan kata ganjil atau genap
```
children: <Widget>[
            if(_counter.isOdd)
              const Text('GANJIL', style: TextStyle(color: Colors.red),),
            if (_counter.isEven)
              const Text('GENAP', style: TextStyle(color: Colors.blue)),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline4,
            ),
          ],
```
4. Membuat widget untuk menampilkan button tambah dan kurang (bonus : button kurang menghilang jika counter bernilai 0)
```
 children: [
            _counter > 0 ? FloatingActionButton(onPressed: _decrementCounter,
                tooltip: "Decrement",
                child: const Icon(Icons.remove)) : SizedBox(),
            FloatingActionButton(onPressed: _incrementCounter,
                tooltip: "Increment",
                child: const Icon(Icons.add))
          ],
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

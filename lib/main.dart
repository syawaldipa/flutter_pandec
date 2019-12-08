import 'package:flutter/material.dart';
import 'package:flutter_pandec/listview.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Utama()
    )
  );
}


//stf
class Utama extends StatefulWidget {
  @override
  _UtamaState createState() => _UtamaState();
}

class _UtamaState extends State<Utama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //membuat app bar
        title: Text('Belajar Flutter'),
      ),
//      body: Text ("Hello World"), // isi dalam aplikasi
      body: Container(
        child: listView(),// untuk memanggil class
      ),
    );
  }
}


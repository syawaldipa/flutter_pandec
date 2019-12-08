import 'package:flutter/material.dart';
class halamanDetail extends StatefulWidget {
  final nama; // data di terima
  final warna;

  halamanDetail({
    this.nama, // data di terima
    this.warna,
});
  @override
  _halamanDetailState createState() => _halamanDetailState();
}

class _halamanDetailState extends State<halamanDetail> {

  Color appBarColor;

  @override
  Widget build(BuildContext context) {
    if (widget.warna == 1) {
      appBarColor = Colors.red;
    } else {
      appBarColor = Colors.yellow;
    }
      return Scaffold(
        appBar: AppBar( // membuat app bar
          backgroundColor: appBarColor,
          title: Text("halaman untuk ${widget.nama}"),

        ),
        body: Center(
          child: Text('halo ${widget.nama}, selamat malam'),
        ),
      );
    }
  }

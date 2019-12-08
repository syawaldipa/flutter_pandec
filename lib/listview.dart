import 'package:flutter/material.dart';
import 'package:flutter_pandec/detailHalaman.dart';



//stf ful
class listView  extends StatefulWidget{
  @override

 _listViewState createState() => _listViewState();
  }
class _listViewState extends State<listView>{
  var list = [
    {
      "nama" : 'ardi',
      "umur" : 'laki-laki',
      "id" : '1',
      "icon" : Icons.add
    },
    {
      "nama" : 'ari',
      "umur" : 'laki-laki',
      "id" : '1',
      "icon" : Icons.add
    },
    {
      "nama" : 'indah',
      "umur" : 'perempuan',
      "id" : '1',
      "icon" : Icons.add
    },
    {
      "nama" : 'ayah',
      "umur" : 'laki-laki',
      "id" : '1',
      "icon" : Icons.add
    },
    {
      "nama" : 'ibu',
      "umur" : 'perempuan',
      "id" : '1',
      "icon" : Icons.add
    },
    {
      "nama" : 'adik',
      "umur" : 'laki-laki',
      "id" : '1',
      "icon" : Icons.add
    },
    {
      "nama" : 'kakak',
      "umur" : 'perempuan',
      "id" : '1',
      "icon" : Icons.add
    },
    {
      "nama" : 'bunda',
      "umur" : 'perempuan',
      "id" : '1',
      "icon" : Icons.add
    },
    {
      "nama" : 'abang',
      "umur" : 'laki-laki',
      "id" : '1',
      "icon" : Icons.add
    },
    {
      "nama" : 'kakek',
      "umur" : 'laki-laki',
      "id" : '1',
      "icon" : Icons.add
    },
    {
      "nama" : 'nenek',
      "umur" : 'perempuan',
      "id" : '1',
      "icon" : Icons.add
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
      itemBuilder: (context, index){
          return listTitleSingle(
            nama: list[index]["nama"],
            umur: list[index]["umur"],
//            id: list[index]["id"],
          id: (index),// agar berurutan
            icon: list[index]["icon"],
          );
      },
    );
  }
}

class listTitleSingle extends StatefulWidget {

  final nama;
  final umur;
  final id;
  final icon;
  listTitleSingle({
    this.nama,
    this.umur,
    this.id,
    this.icon

});
  @override
  _listTitleSingleState createState() => _listTitleSingleState();
}

class _listTitleSingleState extends State<listTitleSingle> {
  var angkawarna;
  @override

  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        if(widget.umur == 'laki-laki'){
          angkawarna = 1;
        }else{
          angkawarna = 2;
        }

        Navigator.push(context, MaterialPageRoute(builder: (context)=> halamanDetail(
          nama: widget.nama, // data yang akan di kirim
          warna : angkawarna,

        ))); //pindah halaman
      },

      leading: Text("${widget.id}"), //$ agar berurutan
      title: Text(widget.nama),
      subtitle: Text(widget.umur),
      trailing: Icon(widget.icon),

    );
  }
}





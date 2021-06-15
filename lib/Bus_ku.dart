import 'package:flutter/material.dart';
import 'package:kendaraanku/Myicons.dart';

class BusKu extends StatefulWidget {
  
  @override
  _BusKuState createState() => _BusKuState();
}

class _BusKuState extends State<BusKu> {

   createAlertDialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Order Sukses'),
        content: Text('Silahkan menunggu hingga tanggal yang anda pilih'),
        actions: <Widget>[
          FlatButton(onPressed: (){}, child: Text('Kembali')),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus-Ku'),),
      
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        
          TextField(
        decoration: InputDecoration(
          hintText: "Nama",
          labelText: "Nama Perusahaan",
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.black
          ),
          border: OutlineInputBorder(),
          icon: Icon(Icons.add_location),
        ),
        keyboardType: TextInputType.text,
        obscureText: false,
        ),

        TextField(
        decoration: InputDecoration(
          hintText: "Alamat Anda",
          labelText: "Masukkan Alamat Anda",
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.black
          ),
          border: OutlineInputBorder(),
          icon: Icon(Icons.add_location),
        ),
        keyboardType: TextInputType.text,
        obscureText: false,
        ),

        TextField(
        decoration: InputDecoration(
          hintText: "Alamat Tujuan",
          labelText: "Masukkan Alamat Tujuan Anda",
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          border: OutlineInputBorder(),
          icon: Icon(Icons.add_location),
        ),
        keyboardType: TextInputType.text,
        obscureText: false,
        ),
        
        TextField(
        decoration: InputDecoration(
          hintText: "Tanggal",
          labelText: "Pilih Tanggal(HH/BB/TT)",
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.black
          ),
          border: OutlineInputBorder(),
          icon: Icon(Icons.add_location),
        ),
        keyboardType: TextInputType.number,
        obscureText: false,
        ),

        RaisedButton.icon(
          onPressed: (){
           createAlertDialog(context);
          },
          icon: Icon((Myicons.bus)),
          label: Text('Order Sekarang'),)
        ],
    ), 
      );
  }
}
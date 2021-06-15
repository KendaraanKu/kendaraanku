import 'package:flutter/material.dart';
import 'package:kendaraanku/Myicons.dart';

class MobilKu extends StatefulWidget {
  
  @override
  _MobilKuState createState() => _MobilKuState();
}

class _MobilKuState extends State<MobilKu> {

    createAlertDialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Order Sukses'),
        content: Text('Driver akan segera menuju ke tempat anda'),
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
        title: Text('Mobil-Ku'),),
      
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        
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
        

        RaisedButton.icon(
          onPressed: (){
           createAlertDialog(context);
          },
          icon: Icon((Myicons.car_side)),
          label: Text('Order Sekarang'),)
        ],
    ), 
      );
  }
}
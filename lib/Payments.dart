import 'package:flutter/material.dart';

class Payments extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Payments'),
      ),
      body: Column(
        children: [
          CircleAvatar

            (backgroundColor: Colors.greenAccent,
              radius: 40,
              child: Icon(Icons.flag,color: Colors.green,size: 50,)),
          Text('Finish Setting up Payments on Whatsapp to send and recieve money securely',style: TextStyle(
            color: Colors.grey,
          )),
          ElevatedButton(onPressed: (){}, child: Text('Finish Set up',style: TextStyle(
            backgroundColor: Colors.green,
          ),)),
          ListTile(
            title: Text('Send Payment'),
            onTap: (){},
            leading: Icon(Icons.currency_rupee,color: Colors.teal),
          ),
          ListTile(
            title: Text('Scan payment QR code'),
            leading: Icon(Icons.qr_code),
            onTap: (){},
          ),
          Text('History',style: TextStyle(
            color: Colors.teal,
          )),


        ],
      ),
    );
  }

}
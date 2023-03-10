import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class status_ui extends StatefulWidget
{
  @override
  State<status_ui> createState() => _status_uiState();
}

class _status_uiState extends State<status_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar(child: Icon(Icons.camera_enhance_rounded,size: 27,color: Colors.white),
      backgroundColor: Colors.green,radius: 30),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(

              child: Container
                (decoration: BoxDecoration(

                  border: Border.all(color: Colors.grey,width: 3),
                  borderRadius: BorderRadius.circular(40),
              ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                      child: Image.network('data:image/jpeg;base64,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',fit: BoxFit.cover,))
              ),
            backgroundColor: Colors.white,),
            title: Text('My Status',style: TextStyle(
              fontWeight: FontWeight.bold
            )),
            subtitle: Text('Tap to add status update'),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 15,),
              Text('Recent Updates',style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 15,),
            ],
          ),
          ListTile(
            leading: Icon(Icons.account_circle_sharp,size: 50),
            title: Text('Kavita Mishra',style: TextStyle(
              fontWeight: FontWeight.bold
            )),
            subtitle: Text('21 minutes ago'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_sharp,size: 50),
            title: Text('Kavita Mishra',style: TextStyle(
                fontWeight: FontWeight.bold
            )),
            subtitle: Text('21 minutes ago'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_sharp,size: 50),
            title: Text('Kavita Mishra',style: TextStyle(
                fontWeight: FontWeight.bold
            )),
            subtitle: Text('21 minutes ago'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_sharp,size: 50),
            title: Text('Kavita Mishra',style: TextStyle(
                fontWeight: FontWeight.bold
            )),
            subtitle: Text('21 minutes ago'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_sharp,size: 50),
            title: Text('Kavita Mishra',style: TextStyle(
                fontWeight: FontWeight.bold
            )),
            subtitle: Text('21 minutes ago'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_sharp,size: 50),
            title: Text('Kavita Mishra',style: TextStyle(
                fontWeight: FontWeight.bold
            )),
            subtitle: Text('21 minutes ago'),
          ),

        ],
      )
    );
  }
}
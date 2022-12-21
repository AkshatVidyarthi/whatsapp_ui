import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Linked_device extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Linked Devices'),
      ),
      body: Container(
        height: 500,
        width: 500,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 30,),
            Image.network('https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/eh9vu0zttzuhwc8z_1636098555.jpeg'),
            Text('Use Whatsapp on Other Devices',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(height: 7,),
            SizedBox(
              width: 310,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal
                ),
                  onPressed: (){}, child: Text(
                'Link A Device',style: TextStyle(
                fontWeight: FontWeight.bold
              ),

              )),
            ),
            SizedBox(height: 7),
            ListTile(
              leading: Icon(Icons.lock,size: 20),
              subtitle: Text('Your personal  messages are end to end encryptedon all your devices'),

            )
          ],
        ),
      ),
    );
  }

}

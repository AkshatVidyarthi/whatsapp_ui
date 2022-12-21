import 'package:flutter/material.dart';
import 'package:whatsapp_ui/home_page.dart';

class Login_Page extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             body:Column(

               children: [
                 SizedBox(height: 32,),
                 ListTile(

                   onTap: (){},
                   title: Text('Verify your phone number',style: TextStyle(
                     color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 20,
                   )),
                   trailing: IconButton(onPressed: (){},icon: Icon(Icons.more_vert)),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(32.0),
                   child: TextField(
                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                       hintText: 'phone number',
                     ),
                   ),
                 ),
                 ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return HomePage();
                   },));
                 }, child: Text(
                   'Next'
                 )),
                 SizedBox(height: 10,),
                 Text('Carrier SMS charges may apply'),
                 SizedBox(height: 20,),
                 Center(child: Text('If you want to restore chats history from whatsapp, make sure you made a backup from your messages,then you can restore it by pressing the button below then put your number-press on next')),


               ],
             ),

    );
  }

}
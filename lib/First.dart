import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ui/chat_screen.dart';

class First extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar
        (child: Icon(Icons.message,color: Colors.white,size: 27),
      backgroundColor: Colors.green,radius: 30),
         body: SingleChildScrollView(
           child: Column(
             children: [
               ListTile(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return chat_screen();
                   },));
                 },
                 leading: Icon(Icons.account_circle,size: 50,),
                 title: Text('Flora',style: TextStyle(
                   fontWeight: FontWeight.w500
                 ),
                 ),
                 subtitle: Row(
                   children: [
                     Icon(Icons.check,color: Colors.grey,),
                     Text('How are you?'),
                   ],
                 ),
                 trailing: Text('11:10'),
               ),
               ListTile(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return chat_screen();
                   },));
                 },
                 leading: Icon(Icons.account_circle,size: 50,),
                 title: Text('Akshat',style: TextStyle(
                     fontWeight: FontWeight.w500
                 ),
                 ),
                 subtitle: Row(
                   children: [
                     Icon(Icons.check,color: Colors.grey,),
                     Text('bring home subway?'),
                   ],
                 ),
                 trailing: Text('11:25'),
               ),
               ListTile(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return chat_screen();
                   },));
                 },
                 leading: Icon(Icons.account_circle,size: 50,),
                 title: Text('Hemang',style: TextStyle(
                     fontWeight: FontWeight.w500
                 ),
                 ),
                 subtitle: Row(
                   children: [
                     Icon(Icons.check,color: Colors.grey,),
                     Text('You are so cute'),
                   ],
                 ),
                 trailing: Text('1:00'),
               ),
               ListTile(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return chat_screen();
                   },));
                 },
                 leading: Icon(Icons.account_circle,size: 50,),
                 title: Text('Salarine',style: TextStyle(
                     fontWeight: FontWeight.w500
                 ),
                 ),
                 subtitle: Row(
                   children: [
                     Icon(Icons.check,color: Colors.grey,),
                     Text('How are you?'),
                   ],
                 ),
                 trailing: Text('12:30'),
               ),
               ListTile(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return chat_screen();
                   },));
                 },
                 leading: Icon(Icons.account_circle,size: 50,),
                 title: Text('Centlie',style: TextStyle(
                     fontWeight: FontWeight.w500
                 ),
                 ),
                 subtitle: Row(
                   children: [
                     Icon(Icons.check,color: Colors.grey,),
                     Text('How is everyone?'),
                   ],
                 ),
                 trailing: Text('9:10'),
               ),
               ListTile(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return chat_screen();
                   },));
                 },
                 leading: Icon(Icons.account_circle,size: 50,),
                 title: Text('Natalie',style: TextStyle(
                     fontWeight: FontWeight.w500
                 ),
                 ),
                 subtitle: Row(
                   children: [
                     Icon(Icons.check,color: Colors.grey,),
                     Text('Going Good'),
                   ],
                 ),
                 trailing: Text('Friday'),
               ),
             ],
           ),
         ),
    );
  }

}
